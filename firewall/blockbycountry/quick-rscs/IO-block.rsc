/ip firewall address-list remove [find list="IO-Block"]
/ip firewall address-list
add address=202.44.112.0/22 list=IO-Block
add address=203.83.48.0/21 list=IO-Block

/ip firewall raw
 :if ([print count-only where src-address-list="IO-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=IO-Block comment="Block IO traffic" }
