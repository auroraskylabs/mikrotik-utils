/ip firewall address-list remove [find list="TO-Block"]
/ip firewall address-list
add address=43.255.148.0/22 list=TO-Block
add address=103.54.78.0/23 list=TO-Block
add address=103.124.187.0/24 list=TO-Block
add address=103.134.118.0/23 list=TO-Block
add address=103.154.96.0/23 list=TO-Block
add address=103.239.160.0/22 list=TO-Block
add address=103.242.126.0/23 list=TO-Block
add address=103.245.160.0/22 list=TO-Block
add address=175.176.144.0/21 list=TO-Block
add address=202.43.8.0/21 list=TO-Block
add address=202.134.24.0/21 list=TO-Block

/ip firewall raw
 :if ([print count-only where src-address-list="TO-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=TO-Block comment="Block TO traffic" }
