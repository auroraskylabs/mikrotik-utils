/ip firewall address-list remove [find list="NR-Block"]
/ip firewall address-list
add address=43.230.6.0/24 list=NR-Block
add address=103.20.124.0/24 list=NR-Block
add address=103.36.150.0/23 list=NR-Block
add address=103.49.173.0/24 list=NR-Block
add address=103.49.174.0/23 list=NR-Block
add address=203.98.224.0/19 list=NR-Block
add address=203.190.216.0/24 list=NR-Block

/ip firewall raw
 :if ([print count-only where src-address-list="NR-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=NR-Block comment="Block NR traffic" }
