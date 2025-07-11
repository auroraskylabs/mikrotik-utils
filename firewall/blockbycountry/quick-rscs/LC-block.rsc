/ip firewall address-list remove [find list="LC-Block"]
/ip firewall address-list
add address=24.92.144.0/20 list=LC-Block
add address=66.212.62.0/23 list=LC-Block
add address=72.14.98.0/23 list=LC-Block
add address=104.218.216.0/22 list=LC-Block
add address=104.255.252.0/22 list=LC-Block
add address=162.0.155.0/24 list=LC-Block
add address=162.212.208.0/23 list=LC-Block
add address=162.245.76.0/22 list=LC-Block
add address=192.58.142.0/23 list=LC-Block
add address=192.147.231.0/24 list=LC-Block
add address=199.38.192.0/21 list=LC-Block
add address=199.192.226.0/23 list=LC-Block
add address=199.223.248.0/22 list=LC-Block
add address=204.145.147.0/24 list=LC-Block
add address=204.152.80.0/23 list=LC-Block
add address=205.166.35.0/24 list=LC-Block
add address=206.126.120.0/21 list=LC-Block
add address=207.191.248.0/21 list=LC-Block
add address=208.94.176.0/21 list=LC-Block

/ip firewall raw
 :if ([print count-only where src-address-list="LC-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=LC-Block comment="Block LC traffic" }
