/ip firewall address-list remove [find list="CU-Block"]
/ip firewall address-list
add address=152.206.0.0/15 list=CU-Block
add address=169.158.0.0/16 list=CU-Block
add address=181.225.224.0/19 list=CU-Block
add address=190.6.64.0/19 list=CU-Block
add address=190.15.144.0/20 list=CU-Block
add address=190.92.112.0/20 list=CU-Block
add address=190.107.0.0/20 list=CU-Block
add address=196.1.112.0/24 list=CU-Block
add address=196.1.135.0/24 list=CU-Block
add address=196.3.152.0/24 list=CU-Block
add address=200.0.16.0/24 list=CU-Block
add address=200.0.24.0/22 list=CU-Block
add address=200.5.12.0/22 list=CU-Block
add address=200.13.144.0/21 list=CU-Block
add address=200.14.48.0/21 list=CU-Block
add address=200.55.128.0/18 list=CU-Block
add address=201.220.192.0/19 list=CU-Block

/ip firewall raw
 :if ([print count-only where src-address-list="CU-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=CU-Block comment="Block CU traffic" }