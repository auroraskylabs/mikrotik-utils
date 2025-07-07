/ip firewall address-list remove [find list="VC-Block"]
/ip firewall address-list
add address=23.170.80.0/24 list=VC-Block
add address=45.42.232.0/22 list=VC-Block
add address=104.219.24.0/22 list=VC-Block
add address=104.255.232.0/22 list=VC-Block
add address=162.212.210.0/23 list=VC-Block
add address=192.58.140.0/23 list=VC-Block
add address=199.192.224.0/23 list=VC-Block
add address=204.13.240.0/22 list=VC-Block
add address=206.83.47.0/24 list=VC-Block
add address=207.191.240.0/21 list=VC-Block
add address=208.84.200.0/21 list=VC-Block

/ip firewall raw
 :if ([print count-only where src-address-list="VC-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=VC-Block comment="Block VC traffic" }
