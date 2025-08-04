/ip firewall address-list remove [find list="KI-Block"]
/ip firewall address-list
add address=103.73.80.0/23 list=KI-Block
add address=103.250.0.0/22 list=KI-Block
add address=202.1.22.0/23 list=KI-Block
add address=202.6.120.0/22 list=KI-Block
add address=202.58.248.0/22 list=KI-Block

/ip firewall raw
 :if ([print count-only where src-address-list="KI-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=KI-Block comment="Block KI traffic" }
