/ip firewall address-list remove [find list="PF-Block"]
/ip firewall address-list
add address=43.249.176.0/22 list=PF-Block
add address=50.21.80.0/20 list=PF-Block
add address=64.140.144.0/20 list=PF-Block
add address=103.4.72.0/22 list=PF-Block
add address=103.46.216.0/22 list=PF-Block
add address=103.129.120.0/22 list=PF-Block
add address=103.166.70.0/23 list=PF-Block
add address=103.254.224.0/22 list=PF-Block
add address=103.254.232.0/22 list=PF-Block
add address=113.197.68.0/22 list=PF-Block
add address=114.141.112.0/21 list=PF-Block
add address=123.50.64.0/18 list=PF-Block
add address=148.66.64.0/18 list=PF-Block
add address=192.171.104.0/21 list=PF-Block
add address=202.3.224.0/19 list=PF-Block
add address=202.90.64.0/19 list=PF-Block
add address=203.185.160.0/20 list=PF-Block
add address=203.185.176.0/21 list=PF-Block
add address=218.100.77.0/24 list=PF-Block

/ip firewall raw
 :if ([print count-only where src-address-list="PF-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=PF-Block comment="Block PF traffic" }
