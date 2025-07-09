/ip firewall address-list remove [find list="TC-Block"]
/ip firewall address-list
add address=65.255.48.0/20 list=TC-Block
add address=142.54.204.0/22 list=TC-Block
add address=192.203.37.0/24 list=TC-Block
add address=199.103.28.0/22 list=TC-Block
add address=199.182.192.0/22 list=TC-Block
add address=204.13.104.0/22 list=TC-Block
add address=204.110.56.0/21 list=TC-Block

/ip firewall raw
 :if ([print count-only where src-address-list="TC-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=TC-Block comment="Block TC traffic" }
