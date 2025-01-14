/ip firewall address-list remove [find list="BS-Block"]
/ip firewall address-list
add address=23.128.212.0/24 list=BS-Block
add address=23.185.48.0/24 list=BS-Block
add address=23.190.112.0/24 list=BS-Block
add address=24.51.64.0/18 list=BS-Block
add address=24.206.0.0/19 list=BS-Block
add address=24.231.32.0/19 list=BS-Block
add address=24.244.128.0/18 list=BS-Block
add address=64.66.0.0/20 list=BS-Block
add address=64.150.192.0/18 list=BS-Block
add address=65.75.64.0/18 list=BS-Block
add address=66.85.2.0/24 list=BS-Block
add address=66.226.160.0/19 list=BS-Block
add address=69.4.160.0/20 list=BS-Block
add address=104.166.32.0/20 list=BS-Block
add address=108.60.224.0/19 list=BS-Block
add address=141.193.84.0/22 list=BS-Block
add address=161.199.175.0/24 list=BS-Block
add address=165.140.144.0/22 list=BS-Block
add address=170.117.211.0/24 list=BS-Block
add address=192.231.36.0/24 list=BS-Block
add address=199.102.188.0/22 list=BS-Block
add address=204.236.64.0/18 list=BS-Block
add address=208.87.32.0/21 list=BS-Block
add address=209.126.78.0/24 list=BS-Block
add address=216.137.0.0/20 list=BS-Block
add address=216.181.104.0/23 list=BS-Block

/ip firewall raw
 :if ([print count-only where src-address-list="BS-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=BS-Block comment="Block BS traffic" }
