/ip firewall address-list remove [find list="CV-Block"]
/ip firewall address-list
add address=41.74.128.0/20 list=CV-Block
add address=41.79.124.0/22 list=CV-Block
add address=41.215.208.0/20 list=CV-Block
add address=41.221.192.0/20 list=CV-Block
add address=102.69.151.0/24 list=CV-Block
add address=102.207.152.0/22 list=CV-Block
add address=102.209.52.0/22 list=CV-Block
add address=102.209.160.0/22 list=CV-Block
add address=102.211.8.0/22 list=CV-Block
add address=102.212.81.0/24 list=CV-Block
add address=102.212.175.0/24 list=CV-Block
add address=102.213.204.0/22 list=CV-Block
add address=102.214.188.0/24 list=CV-Block
add address=102.216.132.0/24 list=CV-Block
add address=102.219.86.0/23 list=CV-Block
add address=102.220.164.0/22 list=CV-Block
add address=102.222.140.0/22 list=CV-Block
add address=165.90.96.0/19 list=CV-Block
add address=169.239.12.0/22 list=CV-Block
add address=196.49.96.0/24 list=CV-Block
add address=196.60.112.0/24 list=CV-Block
add address=197.255.128.0/20 list=CV-Block
add address=213.150.192.0/21 list=CV-Block

/ip firewall raw
 :if ([print count-only where src-address-list="CV-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=CV-Block comment="Block CV traffic" }
