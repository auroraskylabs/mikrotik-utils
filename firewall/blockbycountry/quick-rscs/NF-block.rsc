/ip firewall address-list remove [find list="NF-Block"]
/ip firewall address-list
add address=103.43.204.0/23 list=NF-Block
add address=203.142.221.0/24 list=NF-Block

/ip firewall raw
 :if ([print count-only where src-address-list="NF-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=NF-Block comment="Block NF traffic" }
