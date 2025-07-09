/ip firewall address-list remove [find list="BB-Block"]
/ip firewall address-list
add address=23.236.0.0/20 list=BB-Block
add address=64.119.192.0/20 list=BB-Block
add address=65.48.128.0/17 list=BB-Block
add address=69.73.192.0/18 list=BB-Block
add address=69.80.0.0/18 list=BB-Block
add address=72.22.128.0/19 list=BB-Block
add address=72.51.64.0/18 list=BB-Block
add address=104.153.128.0/21 list=BB-Block
add address=104.200.96.0/20 list=BB-Block
add address=104.218.176.0/22 list=BB-Block
add address=162.212.12.0/22 list=BB-Block
add address=162.220.136.0/21 list=BB-Block
add address=162.246.104.0/21 list=BB-Block
add address=192.65.160.0/21 list=BB-Block
add address=192.171.120.0/21 list=BB-Block
add address=192.214.112.0/20 list=BB-Block
add address=192.235.48.0/20 list=BB-Block
add address=196.1.160.0/20 list=BB-Block
add address=196.3.192.0/19 list=BB-Block
add address=198.56.56.0/21 list=BB-Block
add address=198.245.160.0/24 list=BB-Block
add address=198.246.229.0/24 list=BB-Block
add address=198.246.230.0/24 list=BB-Block
add address=199.7.112.0/21 list=BB-Block
add address=199.47.52.0/22 list=BB-Block
add address=199.58.152.0/22 list=BB-Block
add address=199.254.104.0/21 list=BB-Block
add address=200.50.64.0/19 list=BB-Block
add address=205.214.192.0/19 list=BB-Block
add address=216.110.96.0/19 list=BB-Block

/ip firewall raw
 :if ([print count-only where src-address-list="BB-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=BB-Block comment="Block BB traffic" }
