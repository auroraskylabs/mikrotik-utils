/ip firewall address-list remove [find list="AW-Block"]
/ip firewall address-list
add address=138.255.252.0/22 list=AW-Block
add address=170.84.254.0/24 list=AW-Block
add address=179.61.32.0/19 list=AW-Block
add address=181.41.0.0/18 list=AW-Block
add address=186.96.200.0/21 list=AW-Block
add address=186.96.224.0/20 list=AW-Block
add address=186.96.240.0/21 list=AW-Block
add address=186.189.0.0/18 list=AW-Block
add address=186.189.128.0/18 list=AW-Block
add address=190.12.224.0/19 list=AW-Block
add address=190.104.96.0/20 list=AW-Block
add address=201.229.0.0/17 list=AW-Block

/ip firewall raw
 :if ([print count-only where src-address-list="AW-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=AW-Block comment="Block AW traffic" }
