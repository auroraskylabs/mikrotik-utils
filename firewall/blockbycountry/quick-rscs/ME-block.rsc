/ip firewall address-list remove [find list="ME-Block"]
/ip firewall address-list
add address=31.204.192.0/18 list=ME-Block
add address=37.0.64.0/21 list=ME-Block
add address=37.122.160.0/19 list=ME-Block
add address=46.33.192.0/19 list=ME-Block
add address=46.161.64.0/18 list=ME-Block
add address=62.4.32.0/19 list=ME-Block
add address=77.91.80.0/20 list=ME-Block
add address=77.91.96.0/19 list=ME-Block
add address=77.222.0.0/19 list=ME-Block
add address=78.155.32.0/19 list=ME-Block
add address=79.140.144.0/20 list=ME-Block
add address=79.143.96.0/20 list=ME-Block
add address=81.28.248.0/22 list=ME-Block
add address=84.54.45.0/24 list=ME-Block
add address=85.94.96.0/19 list=ME-Block
add address=89.188.32.0/19 list=ME-Block
add address=89.207.192.0/21 list=ME-Block
add address=91.217.138.0/24 list=ME-Block
add address=91.220.187.0/24 list=ME-Block
add address=92.42.96.0/24 list=ME-Block
add address=93.95.29.0/24 list=ME-Block
add address=94.102.224.0/20 list=ME-Block
add address=94.141.120.0/22 list=ME-Block
add address=95.155.0.0/18 list=ME-Block
add address=109.72.96.0/20 list=ME-Block
add address=109.228.64.0/18 list=ME-Block
add address=185.1.44.0/24 list=ME-Block
add address=185.12.40.0/22 list=ME-Block
add address=185.38.184.0/22 list=ME-Block
add address=185.40.188.0/22 list=ME-Block
add address=185.42.163.0/24 list=ME-Block
add address=185.64.0.0/22 list=ME-Block
add address=185.68.48.0/22 list=ME-Block
add address=185.80.96.0/22 list=ME-Block
add address=185.132.160.0/22 list=ME-Block
add address=185.147.200.0/22 list=ME-Block
add address=185.149.144.0/22 list=ME-Block
add address=185.157.120.0/24 list=ME-Block
add address=185.163.224.0/22 list=ME-Block
add address=185.179.52.0/22 list=ME-Block
add address=185.179.92.0/22 list=ME-Block
add address=185.215.88.0/22 list=ME-Block
add address=185.255.228.0/22 list=ME-Block
add address=193.32.112.0/22 list=ME-Block
add address=195.10.205.0/24 list=ME-Block
add address=195.66.160.0/19 list=ME-Block
add address=195.140.164.0/22 list=ME-Block
add address=195.242.169.0/24 list=ME-Block
add address=213.133.0.0/19 list=ME-Block
add address=213.149.96.0/19 list=ME-Block
add address=213.196.64.0/19 list=ME-Block

/ip firewall raw
 :if ([print count-only where src-address-list="ME-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=ME-Block comment="Block ME traffic" }