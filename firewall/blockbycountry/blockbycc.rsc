# Prompt user to enter country codes separated by spaces
:put "Please enter the country codes separated by spaces:"
:local countryCodes [/system console input]

# Split the input string into a list of country codes
:local ccList [:toarray $countryCodes]

# Loop through each country code and fetch the corresponding block script
:foreach cc in=$ccList do={

    # Format the URL with the country code (lowercase)
    :local url ("https://raw.githubusercontent.com/auroraskylabs/mikrotik-utils/refs/heads/main/firewall/blockbycountry/rsc-files/" . [:pick $cc 0 2] . "-block.rsc")

    # Fetch the script from the URL
    /tool fetch url=$url mode=http dst-path=([:pick $cc 0 2] . "-block.rsc")

    # Check if the file is fetched successfully
    :if ([:len [/file find name=([:pick $cc 0 2] . "-block.rsc")]] > 0) do={

        # Import the fetched script
        /import file-name=([:pick $cc 0 2] . "-block.rsc")

        :put ("Script for country code " . $cc . " has been successfully imported.")

    } else={

        # If file fetch fails, notify the user
        :put ("Failed to fetch or import script for country code " . $cc)
    }

    # Optionally, delete the fetched file after import
    /file remove [find name=([:pick $cc 0 2] . "-block.rsc")]
}

:put "Country blocking scripts have been processed."
