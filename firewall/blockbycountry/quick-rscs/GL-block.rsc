/ip firewall address-list remove [find list="GL-Block"]
/ip firewall address-list
add address=37.18.44.0/22 list=GL-Block
add address=37.230.164.0/22 list=GL-Block
add address=37.230.214.0/23 list=GL-Block
add address=37.230.216.0/22 list=GL-Block
add address=37.230.220.0/23 list=GL-Block
add address=46.16.16.0/21 list=GL-Block
add address=46.243.151.0/24 list=GL-Block
add address=88.83.0.0/19 list=GL-Block
add address=128.0.70.0/24 list=GL-Block
add address=178.170.132.0/22 list=GL-Block
add address=178.170.147.0/24 list=GL-Block
add address=178.170.160.0/22 list=GL-Block
add address=178.170.199.0/24 list=GL-Block
add address=178.170.200.0/22 list=GL-Block
add address=178.170.204.0/23 list=GL-Block
add address=178.170.210.0/23 list=GL-Block
add address=178.170.212.0/22 list=GL-Block
add address=178.170.216.0/24 list=GL-Block
add address=185.18.188.0/22 list=GL-Block
add address=185.21.228.0/22 list=GL-Block
add address=185.57.160.0/22 list=GL-Block
add address=185.93.20.0/22 list=GL-Block
add address=185.157.200.0/22 list=GL-Block
add address=188.72.71.0/24 list=GL-Block
add address=194.177.224.0/19 list=GL-Block

/ip firewall raw
 :if ([print count-only where src-address-list="GL-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=GL-Block comment="Block GL traffic" }
