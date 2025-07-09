/ip firewall address-list remove [find list="MS-Block"]
/ip firewall address-list
add address=199.7.90.0/24 list=MS-Block
add address=208.90.112.0/22 list=MS-Block

/ip firewall raw
 :if ([print count-only where src-address-list="MS-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=MS-Block comment="Block MS traffic" }
