/ip firewall address-list remove [find list="HT-Block"]
/ip firewall address-list
add address=148.102.128.0/17 list=HT-Block
add address=161.0.128.0/19 list=HT-Block
add address=168.197.100.0/22 list=HT-Block
add address=170.80.248.0/22 list=HT-Block
add address=170.83.192.0/22 list=HT-Block
add address=170.239.12.0/22 list=HT-Block
add address=179.51.206.0/24 list=HT-Block
add address=186.1.192.0/20 list=HT-Block
add address=186.190.0.0/17 list=HT-Block
add address=190.102.64.0/19 list=HT-Block
add address=190.105.172.0/22 list=HT-Block
add address=190.115.128.0/18 list=HT-Block
add address=190.120.192.0/19 list=HT-Block
add address=190.196.192.0/20 list=HT-Block
add address=200.0.18.0/24 list=HT-Block
add address=200.2.128.0/19 list=HT-Block
add address=200.4.160.0/19 list=HT-Block
add address=200.113.192.0/18 list=HT-Block
add address=200.115.182.0/23 list=HT-Block
add address=201.131.77.0/24 list=HT-Block
add address=201.150.104.0/22 list=HT-Block

/ip firewall raw
 :if ([print count-only where src-address-list="HT-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=HT-Block comment="Block HT traffic" }
