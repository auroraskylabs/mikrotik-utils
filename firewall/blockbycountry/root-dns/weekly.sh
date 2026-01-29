#!/usr/bin/env bash
set -euo pipefail

# --- Configuration (cron-safe) ---
BASE_DIR="/root/github/mikrotik/firewall/blockbycountry/root-dns"
ARCHIVE_DIR="${BASE_DIR}/archive"

INFRA_FILE="${BASE_DIR}/infra_allow_v4.txt"
RSC_FILE="${BASE_DIR}/RootDNS.rsc"

BUILD_SCRIPT="${BASE_DIR}/build-root-ips.sh"
GEN_SCRIPT="${BASE_DIR}/gen_root_rsc.sh"

# If your build script outputs a different filename, set it here
# (We keep infra_allow_v4.txt as the canonical name in this wrapper.)
BUILD_OUTPUT_DEFAULT="${BASE_DIR}/dns_infra_allow_v4.txt"

# --- Helpers ---
ts_ymd() { date -u +%Y%m%d; }

echo "== RootDNS wrapper =="
echo "Base dir: $BASE_DIR"

mkdir -p "$ARCHIVE_DIR"
cd "$BASE_DIR"

# --- Archive old artifacts (if present) ---
if [[ -f "$INFRA_FILE" || -f "$RSC_FILE" ]]; then
  ARCHIVE_NAME="$(ts_ymd)-rootdns-archive.tar.gz"
  ARCHIVE_PATH="${ARCHIVE_DIR}/${ARCHIVE_NAME}"

  echo "Archiving existing artifacts -> $ARCHIVE_PATH"

  # Build tar list based on what exists
  TAR_ARGS=()
  [[ -f "$INFRA_FILE" ]] && TAR_ARGS+=("$(basename "$INFRA_FILE")")
  [[ -f "$RSC_FILE" ]] && TAR_ARGS+=("$(basename "$RSC_FILE")")

  # Create archive
  tar -czf "$ARCHIVE_PATH" "${TAR_ARGS[@]}"

  # Remove archived files
  [[ -f "$INFRA_FILE" ]] && rm -f "$INFRA_FILE"
  [[ -f "$RSC_FILE" ]] && rm -f "$RSC_FILE"

  echo "Archive complete; old files removed."
else
  echo "No existing infra_allow_v4.txt / RootDNS.rsc to archive."
fi

# --- Run build-root-ips.sh ---
if [[ ! -x "$BUILD_SCRIPT" ]]; then
  echo "ERROR: build script not found or not executable: $BUILD_SCRIPT" >&2
  exit 1
fi

echo "Running: $BUILD_SCRIPT"
"$BUILD_SCRIPT"

# Normalize build output name to infra_allow_v4.txt for the rsc generator
if [[ -f "$BUILD_OUTPUT_DEFAULT" && ! -f "$INFRA_FILE" ]]; then
  mv -f "$BUILD_OUTPUT_DEFAULT" "$INFRA_FILE"
fi

if [[ ! -f "$INFRA_FILE" ]]; then
  echo "ERROR: Expected infra file not found after build: $INFRA_FILE" >&2
  echo "Also checked: $BUILD_OUTPUT_DEFAULT" >&2
  exit 1
fi

# --- Run gen_root_rsc.sh ---
if [[ ! -x "$GEN_SCRIPT" ]]; then
  echo "ERROR: generator script not found or not executable: $GEN_SCRIPT" >&2
  exit 1
fi

echo "Running: $GEN_SCRIPT"
"$GEN_SCRIPT" "$INFRA_FILE" "$RSC_FILE"

echo "== Done =="
echo "Generated:"
echo " - $INFRA_FILE"
echo " - $RSC_FILE"
