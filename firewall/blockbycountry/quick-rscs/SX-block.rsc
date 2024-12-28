/ip firewall address-list remove [find list="SX-Block"]
/ip firewall address-list
add address=131.161.84.0/22 list=SX-Block
add address=168.0.84.0/22 list=SX-Block
add address=168.197.108.0/22 list=SX-Block
add address=170.0.16.0/22 list=SX-Block
add address=190.102.0.0/19 list=SX-Block
add address=190.124.216.0/22 list=SX-Block
add address=190.185.64.0/19 list=SX-Block
add address=200.0.22.0/23 list=SX-Block
add address=200.7.32.0/19 list=SX-Block
add address=201.220.0.0/20 list=SX-Block

/ip firewall raw
 :if ([print count-only where src-address-list="SX-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=SX-Block comment="Block SX traffic" }
