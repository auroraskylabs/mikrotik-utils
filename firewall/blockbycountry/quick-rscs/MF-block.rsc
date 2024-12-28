/ip firewall address-list remove [find list="MF-Block"]
/ip firewall address-list
add address=23.138.120.0/24 list=MF-Block
add address=148.64.60.0/23 list=MF-Block
add address=149.112.46.0/23 list=MF-Block
add address=158.222.40.0/23 list=MF-Block
add address=192.96.136.0/23 list=MF-Block
add address=192.139.192.0/24 list=MF-Block
add address=204.27.52.0/22 list=MF-Block

/ip firewall raw
 :if ([print count-only where src-address-list="MF-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=MF-Block comment="Block MF traffic" }
