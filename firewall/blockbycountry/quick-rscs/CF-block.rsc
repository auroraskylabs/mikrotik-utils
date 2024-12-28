/ip firewall address-list remove [find list="CF-Block"]
/ip firewall address-list
add address=41.78.120.0/22 list=CF-Block
add address=41.223.184.0/22 list=CF-Block
add address=169.239.96.0/22 list=CF-Block
add address=196.216.160.0/24 list=CF-Block
add address=197.242.176.0/21 list=CF-Block

/ip firewall raw
 :if ([print count-only where src-address-list="CF-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=CF-Block comment="Block CF traffic" }
