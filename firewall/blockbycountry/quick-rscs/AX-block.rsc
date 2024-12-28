/ip firewall address-list remove [find list="AX-Block"]
/ip firewall address-list
add address=217.29.224.0/20 list=AX-Block

/ip firewall raw
 :if ([print count-only where src-address-list="AX-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=AX-Block comment="Block AX traffic" }
