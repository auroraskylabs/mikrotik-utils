/ip firewall address-list remove [find list="BQ-Block"]
/ip firewall address-list
add address=138.185.208.0/22 list=BQ-Block
add address=143.0.32.0/22 list=BQ-Block
add address=161.0.80.0/20 list=BQ-Block
add address=186.159.96.0/20 list=BQ-Block
add address=190.4.64.0/20 list=BQ-Block
add address=190.97.112.0/21 list=BQ-Block
add address=190.107.248.0/21 list=BQ-Block
add address=190.123.16.0/22 list=BQ-Block
add address=193.17.35.0/24 list=BQ-Block
add address=200.6.144.0/21 list=BQ-Block
add address=200.71.248.0/21 list=BQ-Block
add address=200.107.84.0/22 list=BQ-Block

/ip firewall raw
 :if ([print count-only where src-address-list="BQ-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=BQ-Block comment="Block BQ traffic" }
