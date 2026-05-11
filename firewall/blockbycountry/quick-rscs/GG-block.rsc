/ip firewall address-list remove [find list="GG-Block"]
/ip firewall address-list
add address=45.11.144.0/22 list=GG-Block
add address=45.135.252.0/22 list=GG-Block
add address=46.31.240.0/21 list=GG-Block
add address=46.235.128.0/21 list=GG-Block
add address=78.41.0.0/21 list=GG-Block
add address=92.43.208.0/21 list=GG-Block
add address=93.187.0.0/21 list=GG-Block
add address=93.189.160.0/21 list=GG-Block
add address=94.247.84.0/23 list=GG-Block
add address=185.31.220.0/22 list=GG-Block
add address=185.37.76.0/22 list=GG-Block
add address=185.85.253.0/24 list=GG-Block
add address=185.104.200.0/22 list=GG-Block
add address=185.110.36.0/22 list=GG-Block
add address=185.143.248.0/22 list=GG-Block
add address=185.159.16.0/22 list=GG-Block
add address=193.104.140.0/24 list=GG-Block
add address=193.169.206.0/23 list=GG-Block
add address=194.9.2.0/23 list=GG-Block
add address=194.116.244.0/23 list=GG-Block
add address=194.145.126.0/24 list=GG-Block
add address=195.226.128.0/19 list=GG-Block

/ip firewall raw
 :if ([print count-only where src-address-list="GG-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=GG-Block comment="Block GG traffic" }
