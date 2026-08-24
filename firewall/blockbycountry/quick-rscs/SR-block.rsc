/ip firewall address-list remove [find list="SR-Block"]
/ip firewall address-list
add address=45.68.20.0/23 list=SR-Block
add address=45.68.22.0/24 list=SR-Block
add address=138.186.208.0/22 list=SR-Block
add address=168.121.84.0/22 list=SR-Block
add address=168.195.216.0/22 list=SR-Block
add address=186.179.128.0/17 list=SR-Block
add address=190.98.0.0/17 list=SR-Block
add address=200.1.156.0/22 list=SR-Block
add address=200.1.208.0/21 list=SR-Block
add address=200.2.160.0/19 list=SR-Block
add address=200.7.148.0/22 list=SR-Block

/ip firewall raw
 :if ([print count-only where src-address-list="SR-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=SR-Block comment="Block SR traffic" }
