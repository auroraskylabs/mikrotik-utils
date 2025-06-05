/ip firewall address-list remove [find list="VI-Block"]
/ip firewall address-list
add address=23.143.120.0/24 list=VI-Block
add address=23.177.184.0/23 list=VI-Block
add address=66.59.216.0/24 list=VI-Block
add address=66.185.32.0/20 list=VI-Block
add address=66.248.160.0/19 list=VI-Block
add address=67.211.240.0/20 list=VI-Block
add address=98.142.160.0/20 list=VI-Block
add address=104.192.184.0/21 list=VI-Block
add address=132.147.224.0/20 list=VI-Block
add address=136.143.195.0/24 list=VI-Block
add address=142.147.102.0/23 list=VI-Block
add address=146.226.0.0/16 list=VI-Block
add address=162.247.24.0/21 list=VI-Block
add address=162.253.168.0/22 list=VI-Block
add address=172.84.192.0/18 list=VI-Block
add address=172.102.224.0/22 list=VI-Block
add address=192.65.170.0/24 list=VI-Block
add address=192.81.72.0/23 list=VI-Block
add address=192.102.82.0/24 list=VI-Block
add address=198.36.28.0/22 list=VI-Block
add address=204.8.64.0/22 list=VI-Block
add address=204.11.152.0/21 list=VI-Block
add address=208.84.192.0/21 list=VI-Block
add address=209.221.192.0/19 list=VI-Block

/ip firewall raw
 :if ([print count-only where src-address-list="VI-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=VI-Block comment="Block VI traffic" }
