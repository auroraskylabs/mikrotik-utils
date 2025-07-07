/ip firewall address-list remove [find list="PM-Block"]
/ip firewall address-list
add address=70.36.0.0/20 list=PM-Block
add address=142.202.130.0/23 list=PM-Block

/ip firewall raw
 :if ([print count-only where src-address-list="PM-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=PM-Block comment="Block PM traffic" }
