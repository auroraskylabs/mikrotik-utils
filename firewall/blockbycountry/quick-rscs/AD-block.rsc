/ip firewall address-list remove [find list="AD-Block"]
/ip firewall address-list
add address=46.172.224.0/19 list=AD-Block
add address=46.175.156.0/22 list=AD-Block
add address=80.80.84.0/22 list=AD-Block
add address=80.80.92.0/22 list=AD-Block
add address=85.94.160.0/19 list=AD-Block
add address=89.150.2.0/23 list=AD-Block
add address=89.150.4.0/22 list=AD-Block
add address=89.150.8.0/21 list=AD-Block
add address=91.187.64.0/19 list=AD-Block
add address=94.125.138.0/23 list=AD-Block
add address=94.125.140.0/23 list=AD-Block
add address=109.111.96.0/19 list=AD-Block
add address=185.4.52.0/22 list=AD-Block
add address=185.33.0.0/22 list=AD-Block
add address=185.87.36.0/22 list=AD-Block
add address=185.87.40.0/21 list=AD-Block
add address=185.132.200.0/22 list=AD-Block
add address=185.194.56.0/22 list=AD-Block
add address=185.247.24.0/22 list=AD-Block
add address=188.241.26.0/23 list=AD-Block
add address=194.158.64.0/19 list=AD-Block
add address=213.236.8.0/21 list=AD-Block

/ip firewall raw
 :if ([print count-only where src-address-list="AD-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=AD-Block comment="Block AD traffic" }
