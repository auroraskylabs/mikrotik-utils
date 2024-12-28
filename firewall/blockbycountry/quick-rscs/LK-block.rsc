/ip firewall address-list remove [find list="LK-Block"]
/ip firewall address-list
add address=43.224.124.0/22 list=LK-Block
add address=43.228.108.0/22 list=LK-Block
add address=43.250.240.0/22 list=LK-Block
add address=43.252.12.0/22 list=LK-Block
add address=45.121.88.0/22 list=LK-Block
add address=61.245.160.0/20 list=LK-Block
add address=101.2.176.0/20 list=LK-Block
add address=103.1.176.0/22 list=LK-Block
add address=103.2.148.0/22 list=LK-Block
add address=103.2.152.0/22 list=LK-Block
add address=103.11.32.0/22 list=LK-Block
add address=103.21.164.0/22 list=LK-Block
add address=103.77.64.0/22 list=LK-Block
add address=103.84.160.0/22 list=LK-Block
add address=103.87.12.0/22 list=LK-Block
add address=103.87.124.0/22 list=LK-Block
add address=103.96.226.0/23 list=LK-Block
add address=103.99.100.0/24 list=LK-Block
add address=103.138.180.0/24 list=LK-Block
add address=103.140.194.0/23 list=LK-Block
add address=103.142.50.0/24 list=LK-Block
add address=103.144.60.0/24 list=LK-Block
add address=103.210.128.0/23 list=LK-Block
add address=103.227.244.0/22 list=LK-Block
add address=103.230.177.0/24 list=LK-Block
add address=103.241.27.0/24 list=LK-Block
add address=103.247.48.0/22 list=LK-Block
add address=111.223.128.0/18 list=LK-Block
add address=112.134.0.0/15 list=LK-Block
add address=113.59.192.0/19 list=LK-Block
add address=116.12.64.0/18 list=LK-Block
add address=116.204.212.0/22 list=LK-Block
add address=116.206.20.0/22 list=LK-Block
add address=116.206.180.0/22 list=LK-Block
add address=116.206.244.0/22 list=LK-Block
add address=119.235.0.0/20 list=LK-Block
add address=122.255.0.0/18 list=LK-Block
add address=123.231.0.0/17 list=LK-Block
add address=124.6.240.0/20 list=LK-Block
add address=124.43.0.0/16 list=LK-Block
add address=125.214.160.0/19 list=LK-Block
add address=157.10.164.0/24 list=LK-Block
add address=160.30.6.0/24 list=LK-Block
add address=175.157.0.0/16 list=LK-Block
add address=182.161.0.0/19 list=LK-Block
add address=192.248.0.0/17 list=LK-Block
add address=194.140.200.0/21 list=LK-Block
add address=202.69.192.0/20 list=LK-Block
add address=202.124.160.0/19 list=LK-Block
add address=202.129.232.0/22 list=LK-Block
add address=203.34.116.0/24 list=LK-Block
add address=203.81.96.0/20 list=LK-Block
add address=203.94.64.0/18 list=LK-Block
add address=203.96.160.0/22 list=LK-Block
add address=203.115.0.0/18 list=LK-Block
add address=203.143.0.0/18 list=LK-Block
add address=203.153.220.0/22 list=LK-Block
add address=203.189.64.0/20 list=LK-Block
add address=203.189.184.0/21 list=LK-Block
add address=212.104.224.0/20 list=LK-Block
add address=218.100.57.0/24 list=LK-Block
add address=218.100.61.0/24 list=LK-Block
add address=220.247.192.0/18 list=LK-Block
add address=222.165.128.0/18 list=LK-Block
add address=223.224.0.0/19 list=LK-Block

/ip firewall raw
 :if ([print count-only where src-address-list="LK-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=LK-Block comment="Block LK traffic" }
