/ip firewall address-list remove [find list="MG-Block"]
/ip firewall address-list
add address=41.63.128.0/19 list=MG-Block
add address=41.74.16.0/20 list=MG-Block
add address=41.74.208.0/20 list=MG-Block
add address=41.77.16.0/21 list=MG-Block
add address=41.188.0.0/18 list=MG-Block
add address=41.190.236.0/22 list=MG-Block
add address=41.204.96.0/19 list=MG-Block
add address=41.207.32.0/19 list=MG-Block
add address=41.242.96.0/20 list=MG-Block
add address=102.16.0.0/14 list=MG-Block
add address=102.20.0.0/15 list=MG-Block
add address=102.68.192.0/18 list=MG-Block
add address=102.211.100.0/22 list=MG-Block
add address=102.216.23.0/24 list=MG-Block
add address=154.120.128.0/18 list=MG-Block
add address=154.126.0.0/17 list=MG-Block
add address=196.43.214.0/24 list=MG-Block
add address=196.49.13.0/24 list=MG-Block
add address=196.192.32.0/20 list=MG-Block
add address=196.223.41.0/24 list=MG-Block
add address=197.148.128.0/18 list=MG-Block
add address=197.149.0.0/18 list=MG-Block
add address=197.158.64.0/18 list=MG-Block
add address=197.159.144.0/20 list=MG-Block
add address=197.215.192.0/20 list=MG-Block

/ip firewall raw
 :if ([print count-only where src-address-list="MG-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=MG-Block comment="Block MG traffic" }