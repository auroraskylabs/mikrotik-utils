/ip firewall address-list remove [find list="MH-Block"]
/ip firewall address-list
add address=23.181.56.0/24 list=MH-Block
add address=81.30.106.0/24 list=MH-Block
add address=103.202.148.0/22 list=MH-Block
add address=117.103.88.0/21 list=MH-Block
add address=185.207.196.0/22 list=MH-Block
add address=193.227.113.0/24 list=MH-Block
add address=203.78.152.0/22 list=MH-Block

/ip firewall raw
 :if ([print count-only where src-address-list="MH-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=MH-Block comment="Block MH traffic" }
