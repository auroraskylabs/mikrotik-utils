/ip firewall address-list remove [find list="SZ-Block"]
/ip firewall address-list
add address=41.77.232.0/21 list=SZ-Block
add address=41.84.224.0/19 list=SZ-Block
add address=41.204.0.0/19 list=SZ-Block
add address=41.211.32.0/19 list=SZ-Block
add address=41.215.144.0/20 list=SZ-Block
add address=69.63.64.0/20 list=SZ-Block
add address=102.23.132.0/22 list=SZ-Block
add address=102.36.181.0/24 list=SZ-Block
add address=102.67.144.0/22 list=SZ-Block
add address=102.68.48.0/22 list=SZ-Block
add address=102.209.176.0/22 list=SZ-Block
add address=102.212.200.0/22 list=SZ-Block
add address=102.212.228.0/24 list=SZ-Block
add address=102.214.160.0/22 list=SZ-Block
add address=102.215.24.0/22 list=SZ-Block
add address=102.215.99.0/24 list=SZ-Block
add address=102.222.132.0/22 list=SZ-Block
add address=154.119.96.0/19 list=SZ-Block
add address=165.73.132.0/22 list=SZ-Block
add address=196.11.124.0/24 list=SZ-Block
add address=196.13.168.0/24 list=SZ-Block
add address=196.28.7.0/24 list=SZ-Block
add address=196.49.4.0/24 list=SZ-Block
add address=196.223.37.0/24 list=SZ-Block

/ip firewall raw
 :if ([print count-only where src-address-list="SZ-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=SZ-Block comment="Block SZ traffic" }