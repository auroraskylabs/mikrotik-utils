/ip firewall address-list remove [find list="TK-Block"]
/ip firewall address-list
add address=27.96.24.0/21 list=TK-Block
add address=194.0.38.0/23 list=TK-Block
add address=194.0.40.0/23 list=TK-Block

/ip firewall raw
 :if ([print count-only where src-address-list="TK-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=TK-Block comment="Block TK traffic" }
