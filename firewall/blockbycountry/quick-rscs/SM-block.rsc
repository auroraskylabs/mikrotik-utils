/ip firewall address-list remove [find list="SM-Block"]
/ip firewall address-list
add address=5.183.163.0/24 list=SM-Block
add address=31.193.32.0/21 list=SM-Block
add address=45.65.80.0/22 list=SM-Block
add address=77.242.208.0/20 list=SM-Block
add address=89.186.32.0/19 list=SM-Block
add address=91.223.220.0/24 list=SM-Block
add address=91.234.215.0/24 list=SM-Block
add address=94.232.112.0/21 list=SM-Block
add address=109.233.80.0/21 list=SM-Block
add address=109.235.104.0/21 list=SM-Block
add address=185.21.116.0/22 list=SM-Block
add address=185.21.132.0/24 list=SM-Block
add address=185.45.40.0/22 list=SM-Block
add address=185.45.68.0/22 list=SM-Block
add address=185.62.32.0/22 list=SM-Block
add address=185.86.60.0/22 list=SM-Block
add address=185.125.240.0/24 list=SM-Block
add address=185.146.128.0/22 list=SM-Block
add address=185.168.168.0/22 list=SM-Block
add address=192.145.48.0/22 list=SM-Block
add address=194.0.27.0/24 list=SM-Block
add address=194.183.64.0/19 list=SM-Block

/ip firewall raw
 :if ([print count-only where src-address-list="SM-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=SM-Block comment="Block SM traffic" }
