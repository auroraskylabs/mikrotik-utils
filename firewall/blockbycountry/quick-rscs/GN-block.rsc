/ip firewall address-list remove [find list="GN-Block"]
/ip firewall address-list
add address=41.77.184.0/21 list=GN-Block
add address=41.79.200.0/22 list=GN-Block
add address=41.79.236.0/22 list=GN-Block
add address=41.191.220.0/22 list=GN-Block
add address=41.223.48.0/22 list=GN-Block
add address=41.242.88.0/22 list=GN-Block
add address=45.220.52.0/22 list=GN-Block
add address=102.176.160.0/20 list=GN-Block
add address=102.206.72.0/22 list=GN-Block
add address=102.208.222.0/24 list=GN-Block
add address=102.208.241.0/24 list=GN-Block
add address=102.209.204.0/22 list=GN-Block
add address=102.211.199.0/24 list=GN-Block
add address=102.218.129.0/24 list=GN-Block
add address=102.218.136.0/22 list=GN-Block
add address=102.218.236.0/22 list=GN-Block
add address=160.119.128.0/21 list=GN-Block
add address=196.49.40.0/24 list=GN-Block
add address=196.49.64.0/24 list=GN-Block
add address=196.60.38.0/24 list=GN-Block
add address=196.60.61.0/24 list=GN-Block
add address=197.149.192.0/18 list=GN-Block

/ip firewall raw
 :if ([print count-only where src-address-list="GN-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=GN-Block comment="Block GN traffic" }
