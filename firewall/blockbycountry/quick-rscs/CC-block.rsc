/ip firewall address-list remove [find list="CC-Block"]
/ip firewall address-list
add address=203.171.252.0/22 list=CC-Block

/ip firewall raw
 :if ([print count-only where src-address-list="CC-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=CC-Block comment="Block CC traffic" }
