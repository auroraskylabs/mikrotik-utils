/ip firewall address-list remove [find list="GW-Block"]
/ip firewall address-list
add address=102.219.174.0/23 list=GW-Block
add address=154.73.60.0/22 list=GW-Block
add address=197.214.80.0/20 list=GW-Block

/ip firewall raw
 :if ([print count-only where src-address-list="GW-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=GW-Block comment="Block GW traffic" }