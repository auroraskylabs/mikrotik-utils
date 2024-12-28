/ip firewall address-list remove [find list="SL-Block"]
/ip firewall address-list
add address=41.78.84.0/22 list=SL-Block
add address=41.191.248.0/22 list=SL-Block
add address=41.223.132.0/22 list=SL-Block
add address=102.22.104.0/22 list=SL-Block
add address=102.23.140.0/22 list=SL-Block
add address=102.143.0.0/17 list=SL-Block
add address=102.176.188.0/22 list=SL-Block
add address=102.207.104.0/22 list=SL-Block
add address=102.208.243.0/24 list=SL-Block
add address=102.210.52.0/24 list=SL-Block
add address=102.210.193.0/24 list=SL-Block
add address=102.216.238.0/23 list=SL-Block
add address=102.220.249.0/24 list=SL-Block
add address=102.223.154.0/23 list=SL-Block
add address=102.223.168.0/22 list=SL-Block
add address=160.19.152.0/22 list=SL-Block
add address=160.20.112.0/22 list=SL-Block
add address=165.73.236.0/22 list=SL-Block
add address=169.239.196.0/22 list=SL-Block
add address=169.239.244.0/22 list=SL-Block
add address=196.43.229.0/24 list=SL-Block
add address=196.216.220.0/23 list=SL-Block
add address=196.223.10.0/24 list=SL-Block
add address=197.157.232.0/22 list=SL-Block
add address=197.215.0.0/17 list=SL-Block

/ip firewall raw
 :if ([print count-only where src-address-list="SL-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=SL-Block comment="Block SL traffic" }