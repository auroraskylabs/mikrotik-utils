/ip firewall address-list remove [find list="GU-Block"]
/ip firewall address-list
add address=43.240.88.0/22 list=GU-Block
add address=43.247.60.0/22 list=GU-Block
add address=49.128.104.0/22 list=GU-Block
add address=101.99.128.0/17 list=GU-Block
add address=103.3.240.0/22 list=GU-Block
add address=103.7.100.0/22 list=GU-Block
add address=103.17.112.0/22 list=GU-Block
add address=103.115.192.0/23 list=GU-Block
add address=103.142.152.0/23 list=GU-Block
add address=103.212.24.0/22 list=GU-Block
add address=114.142.192.0/18 list=GU-Block
add address=116.68.0.0/19 list=GU-Block
add address=117.20.120.0/21 list=GU-Block
add address=121.55.192.0/18 list=GU-Block
add address=139.5.136.0/22 list=GU-Block
add address=168.123.0.0/16 list=GU-Block
add address=182.173.192.0/18 list=GU-Block
add address=192.149.202.0/24 list=GU-Block
add address=202.22.176.0/20 list=GU-Block
add address=202.47.144.0/20 list=GU-Block
add address=202.123.128.0/19 list=GU-Block
add address=202.128.0.0/19 list=GU-Block
add address=202.128.64.0/19 list=GU-Block
add address=202.131.160.0/19 list=GU-Block
add address=202.151.64.0/19 list=GU-Block
add address=203.95.8.0/21 list=GU-Block
add address=203.215.52.0/22 list=GU-Block

/ip firewall raw
 :if ([print count-only where src-address-list="GU-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=GU-Block comment="Block GU traffic" }
