/ip firewall address-list remove [find list="YT-Block"]
/ip firewall address-list
add address=41.242.116.0/22 list=YT-Block

/ip firewall raw
 :if ([print count-only where src-address-list="YT-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=YT-Block comment="Block YT traffic" }
