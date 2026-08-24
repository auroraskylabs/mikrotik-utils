/ip firewall address-list remove [find list="TV-Block"]
/ip firewall address-list
add address=202.2.96.0/19 list=TV-Block

/ip firewall raw
 :if ([print count-only where src-address-list="TV-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=TV-Block comment="Block TV traffic" }
