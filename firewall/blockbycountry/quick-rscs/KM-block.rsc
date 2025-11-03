/ip firewall address-list remove [find list="KM-Block"]
/ip firewall address-list
add address=102.204.47.0/24 list=KM-Block
add address=102.207.176.0/22 list=KM-Block
add address=102.223.120.0/22 list=KM-Block
add address=164.160.136.0/22 list=KM-Block
add address=197.255.224.0/20 list=KM-Block

/ip firewall raw
 :if ([print count-only where src-address-list="KM-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=KM-Block comment="Block KM traffic" }
