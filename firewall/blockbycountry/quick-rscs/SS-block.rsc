/ip firewall address-list remove [find list="SS-Block"]
/ip firewall address-list
add address=41.79.24.0/22 list=SS-Block
add address=41.79.120.0/22 list=SS-Block
add address=41.222.72.0/22 list=SS-Block
add address=102.22.232.0/22 list=SS-Block
add address=102.23.80.0/22 list=SS-Block
add address=102.36.212.0/22 list=SS-Block
add address=102.64.0.0/22 list=SS-Block
add address=102.64.59.0/24 list=SS-Block
add address=102.64.72.0/22 list=SS-Block
add address=102.64.124.0/22 list=SS-Block
add address=102.208.132.0/22 list=SS-Block
add address=102.208.196.0/22 list=SS-Block
add address=102.211.192.0/22 list=SS-Block
add address=102.214.13.0/24 list=SS-Block
add address=102.215.16.0/22 list=SS-Block
add address=102.216.108.0/22 list=SS-Block
add address=102.222.36.0/22 list=SS-Block
add address=102.222.61.0/24 list=SS-Block
add address=102.222.64.0/23 list=SS-Block
add address=105.235.208.0/21 list=SS-Block
add address=154.73.88.0/22 list=SS-Block
add address=169.255.24.0/22 list=SS-Block
add address=169.255.136.0/22 list=SS-Block
add address=192.145.180.0/22 list=SS-Block
add address=196.60.88.0/23 list=SS-Block
add address=196.192.116.0/22 list=SS-Block
add address=196.201.8.0/22 list=SS-Block
add address=197.231.236.0/22 list=SS-Block

/ip firewall raw
 :if ([print count-only where src-address-list="SS-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=SS-Block comment="Block SS traffic" }