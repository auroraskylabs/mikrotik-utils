/ip firewall address-list remove [find list="MP-Block"]
/ip firewall address-list
add address=45.117.196.0/22 list=MP-Block
add address=103.1.96.0/22 list=MP-Block
add address=103.57.232.0/22 list=MP-Block
add address=202.88.64.0/19 list=MP-Block
add address=210.23.80.0/20 list=MP-Block

/ip firewall raw
 :if ([print count-only where src-address-list="MP-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=MP-Block comment="Block MP traffic" }
