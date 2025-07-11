/ip firewall address-list remove [find list="TJ-Block"]
/ip firewall address-list
add address=37.98.152.0/21 list=TJ-Block
add address=45.81.37.0/24 list=TJ-Block
add address=45.94.216.0/22 list=TJ-Block
add address=45.124.96.0/23 list=TJ-Block
add address=46.20.192.0/20 list=TJ-Block
add address=62.122.136.0/21 list=TJ-Block
add address=77.95.0.0/21 list=TJ-Block
add address=77.244.144.0/20 list=TJ-Block
add address=77.247.198.0/24 list=TJ-Block
add address=79.170.184.0/21 list=TJ-Block
add address=80.73.240.0/24 list=TJ-Block
add address=81.85.101.0/24 list=TJ-Block
add address=85.8.129.0/24 list=TJ-Block
add address=85.9.128.0/18 list=TJ-Block
add address=89.104.121.0/24 list=TJ-Block
add address=91.193.26.0/24 list=TJ-Block
add address=91.200.216.0/22 list=TJ-Block
add address=91.218.160.0/22 list=TJ-Block
add address=91.218.168.0/22 list=TJ-Block
add address=91.231.252.0/22 list=TJ-Block
add address=91.235.36.0/22 list=TJ-Block
add address=94.199.16.0/21 list=TJ-Block
add address=95.142.80.0/20 list=TJ-Block
add address=109.68.232.0/21 list=TJ-Block
add address=109.74.64.0/20 list=TJ-Block
add address=109.75.48.0/20 list=TJ-Block
add address=141.193.59.0/24 list=TJ-Block
add address=146.19.183.0/24 list=TJ-Block
add address=162.120.21.0/24 list=TJ-Block
add address=176.113.128.0/20 list=TJ-Block
add address=185.42.96.0/22 list=TJ-Block
add address=185.105.228.0/22 list=TJ-Block
add address=185.121.0.0/22 list=TJ-Block
add address=185.166.56.0/22 list=TJ-Block
add address=185.177.0.0/22 list=TJ-Block
add address=185.191.52.0/22 list=TJ-Block
add address=185.194.196.0/22 list=TJ-Block
add address=185.208.96.0/22 list=TJ-Block
add address=185.222.211.0/24 list=TJ-Block
add address=193.24.110.0/24 list=TJ-Block
add address=193.33.130.0/23 list=TJ-Block
add address=193.33.136.0/23 list=TJ-Block
add address=193.57.208.0/22 list=TJ-Block
add address=193.111.10.0/23 list=TJ-Block
add address=194.117.50.0/26 list=TJ-Block
add address=195.26.238.0/23 list=TJ-Block
add address=195.246.102.0/23 list=TJ-Block
add address=195.246.192.0/24 list=TJ-Block
add address=217.8.32.0/20 list=TJ-Block
add address=217.11.176.0/20 list=TJ-Block
add address=217.65.64.0/24 list=TJ-Block
add address=217.197.105.0/24 list=TJ-Block

/ip firewall raw
 :if ([print count-only where src-address-list="TJ-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=TJ-Block comment="Block TJ traffic" }
