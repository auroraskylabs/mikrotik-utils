/ip firewall address-list remove [find list="NA-Block"]
/ip firewall address-list
add address=41.63.192.0/18 list=NA-Block
add address=41.182.0.0/16 list=NA-Block
add address=41.190.84.0/22 list=NA-Block
add address=41.190.96.0/19 list=NA-Block
add address=41.205.128.0/19 list=NA-Block
add address=41.219.64.0/18 list=NA-Block
add address=41.223.80.0/22 list=NA-Block
add address=102.69.212.0/22 list=NA-Block
add address=102.206.108.0/22 list=NA-Block
add address=102.209.196.0/22 list=NA-Block
add address=102.209.244.0/22 list=NA-Block
add address=102.213.184.0/22 list=NA-Block
add address=102.214.132.0/22 list=NA-Block
add address=102.214.212.0/22 list=NA-Block
add address=102.215.104.0/22 list=NA-Block
add address=105.232.0.0/16 list=NA-Block
add address=154.0.192.0/18 list=NA-Block
add address=164.160.108.0/22 list=NA-Block
add address=196.3.94.0/24 list=NA-Block
add address=196.12.10.0/24 list=NA-Block
add address=196.20.0.0/19 list=NA-Block
add address=196.44.128.0/19 list=NA-Block
add address=196.46.28.0/24 list=NA-Block
add address=196.49.2.0/24 list=NA-Block
add address=196.216.164.0/22 list=NA-Block
add address=196.216.207.0/24 list=NA-Block
add address=196.223.18.0/24 list=NA-Block
add address=196.223.35.0/24 list=NA-Block
add address=197.188.0.0/16 list=NA-Block
add address=197.233.0.0/16 list=NA-Block
add address=197.243.128.0/17 list=NA-Block
add address=204.152.14.0/23 list=NA-Block

/ip firewall raw
 :if ([print count-only where src-address-list="NA-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=NA-Block comment="Block NA traffic" }
