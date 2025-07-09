/ip firewall address-list remove [find list="UM-Block"]
/ip firewall address-list
add address=199.26.104.0/21 list=UM-Block

/ip firewall raw
 :if ([print count-only where src-address-list="UM-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=UM-Block comment="Block UM traffic" }
