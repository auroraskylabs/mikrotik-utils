/ip firewall address-list remove [find list="GM-Block"]
/ip firewall address-list
add address=41.76.8.0/21 list=GM-Block
add address=41.223.212.0/22 list=GM-Block
add address=102.69.160.0/22 list=GM-Block
add address=102.140.128.0/19 list=GM-Block
add address=102.206.88.0/22 list=GM-Block
add address=102.211.12.0/22 list=GM-Block
add address=102.211.244.0/22 list=GM-Block
add address=102.213.220.0/22 list=GM-Block
add address=102.216.248.0/22 list=GM-Block
add address=102.221.64.0/22 list=GM-Block
add address=146.196.128.0/17 list=GM-Block
add address=155.251.0.0/16 list=GM-Block
add address=160.182.0.0/15 list=GM-Block
add address=196.46.232.0/21 list=GM-Block
add address=196.49.1.0/24 list=GM-Block
add address=196.223.34.0/24 list=GM-Block
add address=196.223.144.0/21 list=GM-Block
add address=197.148.72.0/21 list=GM-Block
add address=197.231.128.0/21 list=GM-Block
add address=197.231.204.0/22 list=GM-Block
add address=197.242.128.0/20 list=GM-Block
add address=197.255.192.0/20 list=GM-Block
add address=212.60.64.0/19 list=GM-Block

/ip firewall raw
 :if ([print count-only where src-address-list="GM-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=GM-Block comment="Block GM traffic" }
