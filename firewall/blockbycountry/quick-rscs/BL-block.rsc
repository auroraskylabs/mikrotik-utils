/ip firewall address-list remove [find list="BL-Block"]
/ip firewall address-list
add address=23.135.232.0/24 list=BL-Block
add address=149.112.20.0/24 list=BL-Block
add address=206.83.45.0/24 list=BL-Block

/ip firewall raw
 :if ([print count-only where src-address-list="BL-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=BL-Block comment="Block BL traffic" }
