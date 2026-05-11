/ip firewall address-list remove [find list="ER-Block"]
/ip firewall address-list
add address=196.200.96.0/20 list=ER-Block

/ip firewall raw
 :if ([print count-only where src-address-list="ER-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=ER-Block comment="Block ER traffic" }
