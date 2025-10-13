/ip firewall address-list remove [find list="DZ-Block"]
/ip firewall address-list
add address=41.96.0.0/12 list=DZ-Block
add address=41.200.0.0/15 list=DZ-Block
add address=41.220.144.0/20 list=DZ-Block
add address=41.221.16.0/20 list=DZ-Block
add address=41.223.236.0/22 list=DZ-Block
add address=80.88.12.0/22 list=DZ-Block
add address=80.246.0.0/20 list=DZ-Block
add address=80.249.64.0/20 list=DZ-Block
add address=102.204.112.0/22 list=DZ-Block
add address=102.207.216.0/22 list=DZ-Block
add address=102.213.56.0/22 list=DZ-Block
add address=102.218.188.0/22 list=DZ-Block
add address=102.220.28.0/22 list=DZ-Block
add address=105.96.0.0/12 list=DZ-Block
add address=105.235.128.0/20 list=DZ-Block
add address=129.45.0.0/17 list=DZ-Block
add address=154.73.92.0/22 list=DZ-Block
add address=154.121.0.0/16 list=DZ-Block
add address=154.240.0.0/12 list=DZ-Block
add address=168.253.96.0/20 list=DZ-Block
add address=192.52.232.0/24 list=DZ-Block
add address=192.245.148.0/24 list=DZ-Block
add address=193.41.146.0/23 list=DZ-Block
add address=193.194.64.0/19 list=DZ-Block
add address=195.24.80.0/21 list=DZ-Block
add address=195.39.218.0/23 list=DZ-Block
add address=196.20.64.0/18 list=DZ-Block
add address=196.29.40.0/22 list=DZ-Block
add address=196.41.224.0/19 list=DZ-Block
add address=197.112.0.0/13 list=DZ-Block
add address=197.140.0.0/14 list=DZ-Block
add address=197.200.0.0/13 list=DZ-Block
add address=213.179.160.0/19 list=DZ-Block

/ip firewall raw
 :if ([print count-only where src-address-list="DZ-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=DZ-Block comment="Block DZ traffic" }
