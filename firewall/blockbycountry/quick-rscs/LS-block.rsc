/ip firewall address-list remove [find list="LS-Block"]
/ip firewall address-list
add address=41.76.16.0/21 list=LS-Block
add address=41.191.200.0/21 list=LS-Block
add address=41.203.176.0/20 list=LS-Block
add address=64.57.112.0/20 list=LS-Block
add address=102.36.240.0/22 list=LS-Block
add address=102.214.112.0/22 list=LS-Block
add address=129.232.0.0/17 list=LS-Block
add address=154.66.108.0/22 list=LS-Block
add address=156.0.0.0/18 list=LS-Block
add address=196.4.255.0/24 list=LS-Block
add address=196.11.175.0/24 list=LS-Block
add address=196.43.249.0/24 list=LS-Block
add address=196.202.240.0/21 list=LS-Block
add address=196.223.24.0/24 list=LS-Block
add address=197.155.192.0/20 list=LS-Block
add address=197.189.128.0/18 list=LS-Block
add address=197.220.128.0/19 list=LS-Block
add address=197.231.32.0/19 list=LS-Block
add address=197.254.128.0/18 list=LS-Block

/ip firewall raw
 :if ([print count-only where src-address-list="LS-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=LS-Block comment="Block LS traffic" }
