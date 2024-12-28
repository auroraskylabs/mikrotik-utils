/ip firewall address-list remove [find list="FJ-Block"]
/ip firewall address-list
add address=27.123.128.0/18 list=FJ-Block
add address=45.112.224.0/22 list=FJ-Block
add address=45.117.240.0/21 list=FJ-Block
add address=103.1.180.0/22 list=FJ-Block
add address=103.52.88.0/22 list=FJ-Block
add address=103.58.20.0/22 list=FJ-Block
add address=103.71.204.0/24 list=FJ-Block
add address=103.76.157.0/24 list=FJ-Block
add address=103.77.225.0/24 list=FJ-Block
add address=103.99.43.0/24 list=FJ-Block
add address=103.101.240.0/22 list=FJ-Block
add address=103.116.156.0/24 list=FJ-Block
add address=103.137.129.0/24 list=FJ-Block
add address=103.147.194.0/23 list=FJ-Block
add address=103.148.54.0/23 list=FJ-Block
add address=103.178.195.0/24 list=FJ-Block
add address=103.244.228.0/22 list=FJ-Block
add address=110.35.88.0/21 list=FJ-Block
add address=113.20.64.0/19 list=FJ-Block
add address=119.235.64.0/19 list=FJ-Block
add address=119.235.96.0/21 list=FJ-Block
add address=124.108.24.0/21 list=FJ-Block
add address=144.120.0.0/16 list=FJ-Block
add address=183.81.128.0/20 list=FJ-Block
add address=202.62.6.0/23 list=FJ-Block
add address=202.62.118.0/23 list=FJ-Block
add address=202.62.120.0/21 list=FJ-Block
add address=202.129.228.0/22 list=FJ-Block
add address=202.137.176.0/21 list=FJ-Block
add address=202.151.16.0/20 list=FJ-Block
add address=202.170.32.0/20 list=FJ-Block
add address=203.83.251.0/24 list=FJ-Block
add address=203.119.51.0/24 list=FJ-Block
add address=203.202.235.0/24 list=FJ-Block
add address=210.7.0.0/19 list=FJ-Block

/ip firewall raw
 :if ([print count-only where src-address-list="FJ-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=FJ-Block comment="Block FJ traffic" }
