/ip firewall address-list remove [find list="FK-Block"]
/ip firewall address-list
add address=80.73.208.0/20 list=FK-Block
add address=91.232.129.0/24 list=FK-Block
add address=91.232.198.0/24 list=FK-Block
add address=91.232.208.0/24 list=FK-Block
add address=91.232.235.0/24 list=FK-Block
add address=185.87.144.0/22 list=FK-Block
add address=185.244.12.0/22 list=FK-Block

/ip firewall raw
 :if ([print count-only where src-address-list="FK-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=FK-Block comment="Block FK traffic" }
