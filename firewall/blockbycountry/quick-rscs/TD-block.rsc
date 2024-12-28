/ip firewall address-list remove [find list="TD-Block"]
/ip firewall address-list
add address=41.242.152.0/21 list=TD-Block
add address=102.23.84.0/22 list=TD-Block
add address=102.131.56.0/22 list=TD-Block
add address=102.164.244.0/22 list=TD-Block
add address=102.211.107.0/24 list=TD-Block
add address=102.212.248.0/22 list=TD-Block
add address=102.218.112.0/22 list=TD-Block
add address=102.220.101.0/24 list=TD-Block
add address=102.220.196.0/22 list=TD-Block
add address=102.223.48.0/22 list=TD-Block
add address=102.223.192.0/22 list=TD-Block
add address=154.68.128.0/19 list=TD-Block
add address=154.73.112.0/22 list=TD-Block
add address=154.73.160.0/21 list=TD-Block
add address=169.239.120.0/22 list=TD-Block
add address=169.255.152.0/22 list=TD-Block
add address=196.49.92.0/24 list=TD-Block
add address=196.60.106.0/24 list=TD-Block
add address=196.223.42.0/24 list=TD-Block
add address=197.149.128.0/22 list=TD-Block

/ip firewall raw
 :if ([print count-only where src-address-list="TD-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=TD-Block comment="Block TD traffic" }
