/ip firewall address-list remove [find list="CK-Block"]
/ip firewall address-list
add address=116.199.200.0/23 list=CK-Block
add address=202.65.32.0/19 list=CK-Block

/ip firewall raw
 :if ([print count-only where src-address-list="CK-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=CK-Block comment="Block CK traffic" }
