/ip firewall address-list remove [find list="SO-Block"]
/ip firewall address-list
add address=41.78.72.0/22 list=SO-Block
add address=41.79.196.0/22 list=SO-Block
add address=41.223.108.0/22 list=SO-Block
add address=102.38.48.0/22 list=SO-Block
add address=102.68.16.0/22 list=SO-Block
add address=102.68.144.0/21 list=SO-Block
add address=102.128.128.0/21 list=SO-Block
add address=102.141.196.0/22 list=SO-Block
add address=102.210.242.0/24 list=SO-Block
add address=102.214.168.0/22 list=SO-Block
add address=102.218.10.0/23 list=SO-Block
add address=102.218.56.0/22 list=SO-Block
add address=102.218.98.0/24 list=SO-Block
add address=102.220.40.0/22 list=SO-Block
add address=102.223.188.0/22 list=SO-Block
add address=154.72.24.0/22 list=SO-Block
add address=154.72.48.0/22 list=SO-Block
add address=154.73.24.0/22 list=SO-Block
add address=154.73.44.0/22 list=SO-Block
add address=154.73.124.0/22 list=SO-Block
add address=154.115.192.0/18 list=SO-Block
add address=154.118.240.0/22 list=SO-Block
add address=192.145.168.0/21 list=SO-Block
add address=196.11.62.0/24 list=SO-Block
add address=196.49.58.0/24 list=SO-Block
add address=196.60.54.0/24 list=SO-Block
add address=197.157.244.0/22 list=SO-Block
add address=197.220.64.0/19 list=SO-Block
add address=197.231.200.0/22 list=SO-Block

/ip firewall raw
 :if ([print count-only where src-address-list="SO-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=SO-Block comment="Block SO traffic" }