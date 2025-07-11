/ip firewall address-list remove [find list="TL-Block"]
/ip firewall address-list
add address=43.243.120.0/22 list=TL-Block
add address=43.243.176.0/22 list=TL-Block
add address=43.254.56.0/22 list=TL-Block
add address=45.115.72.0/22 list=TL-Block
add address=59.153.132.0/22 list=TL-Block
add address=103.26.95.0/24 list=TL-Block
add address=103.30.112.0/22 list=TL-Block
add address=103.55.48.0/22 list=TL-Block
add address=103.94.180.0/22 list=TL-Block
add address=103.99.26.0/24 list=TL-Block
add address=103.112.36.0/22 list=TL-Block
add address=103.143.164.0/23 list=TL-Block
add address=103.148.184.0/23 list=TL-Block
add address=103.175.148.0/24 list=TL-Block
add address=103.176.12.0/23 list=TL-Block
add address=103.176.215.0/24 list=TL-Block
add address=103.193.252.0/23 list=TL-Block
add address=103.193.254.0/24 list=TL-Block
add address=103.198.176.0/22 list=TL-Block
add address=103.208.36.0/22 list=TL-Block
add address=103.231.123.0/24 list=TL-Block
add address=103.236.128.0/23 list=TL-Block
add address=103.238.116.0/22 list=TL-Block
add address=150.242.108.0/22 list=TL-Block
add address=160.22.52.0/23 list=TL-Block
add address=160.30.30.0/23 list=TL-Block
add address=163.223.148.0/23 list=TL-Block
add address=180.189.160.0/20 list=TL-Block
add address=185.126.46.0/23 list=TL-Block
add address=185.242.38.0/23 list=TL-Block

/ip firewall raw
 :if ([print count-only where src-address-list="TL-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=TL-Block comment="Block TL traffic" }
