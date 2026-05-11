/ip firewall address-list remove [find list="AS-Block"]
/ip firewall address-list
add address=103.117.168.0/22 list=AS-Block
add address=202.70.112.0/20 list=AS-Block

/ip firewall raw
 :if ([print count-only where src-address-list="AS-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=AS-Block comment="Block AS traffic" }
