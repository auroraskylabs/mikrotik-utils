/ip firewall address-list remove [find list="KP-Block"]
/ip firewall address-list
add address=175.45.176.0/22 list=KP-Block

/ip firewall raw
 :if ([print count-only where src-address-list="KP-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=KP-Block comment="Block KP traffic" }
