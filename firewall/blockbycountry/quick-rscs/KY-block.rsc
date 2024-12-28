/ip firewall address-list remove [find list="KY-Block"]
/ip firewall address-list
add address=23.188.0.0/24 list=KY-Block
add address=63.136.112.0/21 list=KY-Block
add address=64.239.32.0/22 list=KY-Block
add address=64.239.116.0/22 list=KY-Block
add address=74.117.216.0/21 list=KY-Block
add address=74.222.64.0/19 list=KY-Block
add address=76.76.15.0/24 list=KY-Block
add address=138.43.115.0/24 list=KY-Block
add address=138.43.248.0/22 list=KY-Block
add address=149.112.19.0/24 list=KY-Block
add address=157.207.32.0/22 list=KY-Block
add address=161.199.132.0/22 list=KY-Block
add address=162.211.136.0/22 list=KY-Block
add address=162.247.220.0/22 list=KY-Block
add address=162.249.128.0/21 list=KY-Block
add address=173.225.208.0/20 list=KY-Block
add address=192.0.4.0/22 list=KY-Block
add address=192.160.250.0/24 list=KY-Block
add address=199.201.84.0/22 list=KY-Block
add address=208.82.216.0/22 list=KY-Block
add address=208.157.144.0/21 list=KY-Block
add address=208.168.224.0/19 list=KY-Block
add address=209.27.52.0/22 list=KY-Block
add address=209.27.60.0/22 list=KY-Block
add address=216.25.44.0/22 list=KY-Block
add address=216.25.64.0/22 list=KY-Block
add address=216.144.80.0/20 list=KY-Block

/ip firewall raw
 :if ([print count-only where src-address-list="KY-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=KY-Block comment="Block KY traffic" }
