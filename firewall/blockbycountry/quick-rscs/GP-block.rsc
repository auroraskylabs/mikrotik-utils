/ip firewall address-list remove [find list="GP-Block"]
/ip firewall address-list
add address=5.187.96.0/19 list=GP-Block
add address=46.238.128.0/18 list=GP-Block
add address=93.121.128.0/17 list=GP-Block
add address=95.138.0.0/17 list=GP-Block
add address=104.250.0.0/19 list=GP-Block
add address=107.191.208.0/20 list=GP-Block
add address=185.29.48.0/22 list=GP-Block
add address=193.218.114.0/24 list=GP-Block
add address=199.91.160.0/22 list=GP-Block
add address=207.90.254.0/23 list=GP-Block
add address=208.72.228.0/22 list=GP-Block
add address=208.79.96.0/22 list=GP-Block
add address=208.94.168.0/22 list=GP-Block
add address=213.16.0.0/19 list=GP-Block
add address=213.188.160.0/19 list=GP-Block

/ip firewall raw
 :if ([print count-only where src-address-list="GP-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=GP-Block comment="Block GP traffic" }
