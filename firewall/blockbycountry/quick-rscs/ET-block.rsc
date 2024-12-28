/ip firewall address-list remove [find list="ET-Block"]
/ip firewall address-list
add address=102.208.96.0/22 list=ET-Block
add address=102.208.136.0/22 list=ET-Block
add address=102.211.105.0/24 list=ET-Block
add address=102.212.10.0/24 list=ET-Block
add address=102.212.68.0/22 list=ET-Block
add address=102.213.68.0/22 list=ET-Block
add address=102.218.0.0/22 list=ET-Block
add address=102.218.48.0/22 list=ET-Block
add address=164.160.184.0/22 list=ET-Block
add address=196.49.98.0/24 list=ET-Block
add address=196.60.116.0/24 list=ET-Block
add address=196.188.0.0/14 list=ET-Block
add address=197.154.0.0/16 list=ET-Block
add address=197.156.64.0/18 list=ET-Block
add address=213.55.64.0/18 list=ET-Block

/ip firewall raw
 :if ([print count-only where src-address-list="ET-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=ET-Block comment="Block ET traffic" }
