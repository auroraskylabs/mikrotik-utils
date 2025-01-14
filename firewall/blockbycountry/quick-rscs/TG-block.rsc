/ip firewall address-list remove [find list="TG-Block"]
/ip firewall address-list
add address=41.78.136.0/22 list=TG-Block
add address=41.207.160.0/19 list=TG-Block
add address=80.248.64.0/20 list=TG-Block
add address=102.64.128.0/17 list=TG-Block
add address=102.164.224.0/20 list=TG-Block
add address=102.176.252.0/22 list=TG-Block
add address=102.212.92.0/22 list=TG-Block
add address=102.217.12.0/22 list=TG-Block
add address=102.219.236.0/22 list=TG-Block
add address=154.70.80.0/20 list=TG-Block
add address=156.38.64.0/19 list=TG-Block
add address=160.242.192.0/18 list=TG-Block
add address=196.49.44.0/24 list=TG-Block
add address=196.60.42.0/24 list=TG-Block
add address=196.168.0.0/14 list=TG-Block
add address=197.148.96.0/19 list=TG-Block

/ip firewall raw
 :if ([print count-only where src-address-list="TG-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=TG-Block comment="Block TG traffic" }
