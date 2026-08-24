/ip firewall address-list remove [find list="NU-Block"]
/ip firewall address-list
add address=49.156.48.0/22 list=NU-Block
add address=202.59.4.0/22 list=NU-Block

/ip firewall raw
 :if ([print count-only where src-address-list="NU-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=NU-Block comment="Block NU traffic" }
