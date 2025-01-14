/ip firewall address-list remove [find list="CG-Block"]
/ip firewall address-list
add address=41.75.64.0/20 list=CG-Block
add address=102.64.116.0/22 list=CG-Block
add address=102.129.64.0/19 list=CG-Block
add address=102.141.0.0/18 list=CG-Block
add address=102.209.72.0/22 list=CG-Block
add address=102.213.232.0/22 list=CG-Block
add address=102.220.244.0/22 list=CG-Block
add address=102.223.220.0/22 list=CG-Block
add address=160.113.0.0/16 list=CG-Block
add address=164.160.16.0/22 list=CG-Block
add address=169.255.72.0/22 list=CG-Block
add address=169.255.120.0/22 list=CG-Block
add address=196.43.240.0/24 list=CG-Block
add address=196.49.56.0/24 list=CG-Block
add address=196.49.60.0/24 list=CG-Block
add address=196.60.56.0/24 list=CG-Block
add address=196.223.32.0/24 list=CG-Block
add address=197.149.136.0/22 list=CG-Block
add address=197.157.252.0/22 list=CG-Block
add address=197.214.128.0/17 list=CG-Block
add address=197.255.176.0/20 list=CG-Block

/ip firewall raw
 :if ([print count-only where src-address-list="CG-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=CG-Block comment="Block CG traffic" }
