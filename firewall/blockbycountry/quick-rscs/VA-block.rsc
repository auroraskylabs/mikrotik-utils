/ip firewall address-list remove [find list="VA-Block"]
/ip firewall address-list
add address=185.17.220.0/22 list=VA-Block
add address=185.152.68.0/22 list=VA-Block
add address=193.43.102.0/23 list=VA-Block
add address=212.77.0.0/19 list=VA-Block

/ip firewall raw
 :if ([print count-only where src-address-list="VA-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=VA-Block comment="Block VA traffic" }
