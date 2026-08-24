/ip firewall address-list remove [find list="AQ-Block"]
/ip firewall address-list
add address=23.154.160.0/24 list=AQ-Block
add address=131.143.220.0/23 list=AQ-Block
add address=209.127.204.0/24 list=AQ-Block

/ip firewall raw
 :if ([print count-only where src-address-list="AQ-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=AQ-Block comment="Block AQ traffic" }
