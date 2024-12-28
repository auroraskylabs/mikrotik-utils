/ip firewall address-list remove [find list="SB-Block"]
/ip firewall address-list
add address=103.2.88.0/22 list=SB-Block
add address=103.9.50.0/24 list=SB-Block
add address=103.21.230.0/23 list=SB-Block
add address=103.21.248.0/22 list=SB-Block
add address=103.89.36.0/24 list=SB-Block
add address=103.115.80.0/23 list=SB-Block
add address=103.140.178.0/23 list=SB-Block
add address=103.142.98.0/23 list=SB-Block
add address=103.166.98.0/23 list=SB-Block
add address=103.175.40.0/23 list=SB-Block
add address=202.1.160.0/19 list=SB-Block
add address=202.63.254.0/23 list=SB-Block

/ip firewall raw
 :if ([print count-only where src-address-list="SB-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=SB-Block comment="Block SB traffic" }
