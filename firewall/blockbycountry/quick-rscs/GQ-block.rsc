/ip firewall address-list remove [find list="GQ-Block"]
/ip firewall address-list
add address=41.79.48.0/22 list=GQ-Block
add address=102.164.248.0/21 list=GQ-Block
add address=102.213.52.0/23 list=GQ-Block
add address=102.223.24.0/22 list=GQ-Block
add address=105.235.224.0/20 list=GQ-Block
add address=154.73.56.0/22 list=GQ-Block
add address=164.160.84.0/22 list=GQ-Block
add address=169.239.112.0/22 list=GQ-Block
add address=196.251.240.0/22 list=GQ-Block
add address=197.149.168.0/22 list=GQ-Block
add address=197.214.64.0/20 list=GQ-Block

/ip firewall raw
 :if ([print count-only where src-address-list="GQ-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=GQ-Block comment="Block GQ traffic" }