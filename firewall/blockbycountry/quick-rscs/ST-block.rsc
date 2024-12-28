/ip firewall address-list remove [find list="ST-Block"]
/ip firewall address-list
add address=154.72.12.0/22 list=ST-Block
add address=197.159.160.0/19 list=ST-Block

/ip firewall raw
 :if ([print count-only where src-address-list="ST-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=ST-Block comment="Block ST traffic" }
