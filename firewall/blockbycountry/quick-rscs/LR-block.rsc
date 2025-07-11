/ip firewall address-list remove [find list="LR-Block"]
/ip firewall address-list
add address=41.57.80.0/20 list=LR-Block
add address=41.86.0.0/19 list=LR-Block
add address=41.191.104.0/22 list=LR-Block
add address=89.207.159.0/24 list=LR-Block
add address=102.22.224.0/21 list=LR-Block
add address=102.36.184.0/22 list=LR-Block
add address=102.206.4.0/22 list=LR-Block
add address=102.207.188.0/23 list=LR-Block
add address=102.210.76.0/22 list=LR-Block
add address=102.214.136.0/22 list=LR-Block
add address=102.215.52.0/22 list=LR-Block
add address=154.65.24.0/22 list=LR-Block
add address=164.160.8.0/22 list=LR-Block
add address=168.253.0.0/19 list=LR-Block
add address=196.49.16.0/24 list=LR-Block
add address=196.223.44.0/24 list=LR-Block
add address=196.250.176.0/20 list=LR-Block
add address=197.215.216.0/22 list=LR-Block
add address=197.231.152.0/21 list=LR-Block
add address=197.231.220.0/22 list=LR-Block

/ip firewall raw
 :if ([print count-only where src-address-list="LR-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=LR-Block comment="Block LR traffic" }
