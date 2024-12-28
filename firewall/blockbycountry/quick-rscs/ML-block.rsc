/ip firewall address-list remove [find list="ML-Block"]
/ip firewall address-list
add address=41.73.96.0/19 list=ML-Block
add address=41.203.192.0/20 list=ML-Block
add address=41.221.176.0/20 list=ML-Block
add address=102.68.176.0/22 list=ML-Block
add address=102.130.232.0/22 list=ML-Block
add address=102.165.96.0/20 list=ML-Block
add address=102.212.72.0/22 list=ML-Block
add address=102.213.136.0/22 list=ML-Block
add address=102.217.24.0/22 list=ML-Block
add address=102.221.132.0/22 list=ML-Block
add address=102.222.204.0/22 list=ML-Block
add address=102.223.64.0/22 list=ML-Block
add address=154.70.192.0/22 list=ML-Block
add address=154.118.128.0/18 list=ML-Block
add address=165.90.208.0/20 list=ML-Block
add address=169.239.100.0/22 list=ML-Block
add address=196.10.216.0/21 list=ML-Block
add address=196.32.112.0/20 list=ML-Block
add address=196.49.48.0/24 list=ML-Block
add address=196.50.16.0/22 list=ML-Block
add address=196.60.46.0/24 list=ML-Block
add address=196.200.48.0/20 list=ML-Block
add address=196.200.80.0/20 list=ML-Block
add address=196.251.156.0/22 list=ML-Block
add address=197.155.128.0/18 list=ML-Block
add address=217.64.96.0/20 list=ML-Block
add address=217.170.144.0/20 list=ML-Block

/ip firewall raw
 :if ([print count-only where src-address-list="ML-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=ML-Block comment="Block ML traffic" }