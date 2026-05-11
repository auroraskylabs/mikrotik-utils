/ip firewall address-list remove [find list="PW-Block"]
/ip firewall address-list
add address=103.30.248.0/22 list=PW-Block
add address=103.159.28.0/23 list=PW-Block
add address=103.251.132.0/23 list=PW-Block
add address=202.124.224.0/20 list=PW-Block

/ip firewall raw
 :if ([print count-only where src-address-list="PW-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=PW-Block comment="Block PW traffic" }
