/ip firewall address-list remove [find list="MQ-Block"]
/ip firewall address-list
add address=5.102.72.0/21 list=MQ-Block
add address=80.243.240.0/20 list=MQ-Block
add address=82.197.96.0/19 list=MQ-Block
add address=89.16.0.0/19 list=MQ-Block
add address=92.49.64.0/18 list=MQ-Block
add address=93.176.0.0/18 list=MQ-Block
add address=94.124.152.0/21 list=MQ-Block
add address=94.124.216.0/21 list=MQ-Block
add address=94.198.176.0/21 list=MQ-Block
add address=104.245.112.0/21 list=MQ-Block
add address=104.249.191.0/24 list=MQ-Block
add address=109.62.0.0/17 list=MQ-Block
add address=109.203.224.0/19 list=MQ-Block
add address=185.13.216.0/22 list=MQ-Block
add address=185.14.99.0/24 list=MQ-Block
add address=185.21.212.0/22 list=MQ-Block
add address=185.60.232.0/22 list=MQ-Block
add address=185.91.232.0/22 list=MQ-Block
add address=188.115.64.0/18 list=MQ-Block
add address=192.163.24.0/22 list=MQ-Block
add address=217.175.160.0/19 list=MQ-Block

/ip firewall raw
 :if ([print count-only where src-address-list="MQ-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=MQ-Block comment="Block MQ traffic" }