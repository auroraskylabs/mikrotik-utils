/ip firewall address-list remove [find list="DJ-Block"]
/ip firewall address-list
add address=41.189.224.0/19 list=DJ-Block
add address=91.209.83.0/24 list=DJ-Block
add address=102.214.90.0/24 list=DJ-Block
add address=196.49.10.0/24 list=DJ-Block
add address=196.201.192.0/20 list=DJ-Block
add address=196.223.38.0/24 list=DJ-Block
add address=197.241.0.0/17 list=DJ-Block

/ip firewall raw
 :if ([print count-only where src-address-list="DJ-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=DJ-Block comment="Block DJ traffic" }
