/ip firewall address-list remove [find list="RW-Block"]
/ip firewall address-list
add address=41.74.160.0/20 list=RW-Block
add address=41.138.80.0/21 list=RW-Block
add address=41.186.0.0/16 list=RW-Block
add address=41.197.0.0/16 list=RW-Block
add address=41.222.244.0/22 list=RW-Block
add address=41.242.140.0/22 list=RW-Block
add address=102.22.128.0/18 list=RW-Block
add address=102.130.32.0/21 list=RW-Block
add address=102.207.48.0/24 list=RW-Block
add address=102.207.141.0/24 list=RW-Block
add address=102.209.168.0/22 list=RW-Block
add address=102.211.72.0/22 list=RW-Block
add address=102.213.212.0/23 list=RW-Block
add address=102.214.220.0/23 list=RW-Block
add address=102.215.8.0/22 list=RW-Block
add address=102.218.176.0/22 list=RW-Block
add address=102.219.173.0/24 list=RW-Block
add address=105.178.0.0/17 list=RW-Block
add address=105.179.0.0/19 list=RW-Block
add address=154.68.64.0/18 list=RW-Block
add address=156.38.8.0/21 list=RW-Block
add address=196.44.240.0/20 list=RW-Block
add address=196.49.7.0/24 list=RW-Block
add address=196.223.12.0/24 list=RW-Block
add address=196.223.240.0/21 list=RW-Block
add address=197.157.128.0/18 list=RW-Block
add address=197.157.212.0/22 list=RW-Block
add address=197.234.244.0/22 list=RW-Block
add address=197.243.0.0/17 list=RW-Block

/ip firewall raw
 :if ([print count-only where src-address-list="RW-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=RW-Block comment="Block RW traffic" }