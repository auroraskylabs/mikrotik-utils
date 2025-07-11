/ip firewall address-list remove [find list="CD-Block"]
/ip firewall address-list
add address=41.77.220.0/22 list=CD-Block
add address=41.78.192.0/21 list=CD-Block
add address=41.79.232.0/22 list=CD-Block
add address=41.189.192.0/19 list=CD-Block
add address=41.190.80.0/22 list=CD-Block
add address=41.190.232.0/22 list=CD-Block
add address=41.215.252.0/22 list=CD-Block
add address=41.222.196.0/22 list=CD-Block
add address=41.222.216.0/22 list=CD-Block
add address=41.223.104.0/22 list=CD-Block
add address=41.243.0.0/16 list=CD-Block
add address=45.221.4.0/22 list=CD-Block
add address=102.23.116.0/22 list=CD-Block
add address=102.36.144.0/24 list=CD-Block
add address=102.36.168.0/22 list=CD-Block
add address=102.36.180.0/24 list=CD-Block
add address=102.64.76.0/22 list=CD-Block
add address=102.67.60.0/22 list=CD-Block
add address=102.68.56.0/21 list=CD-Block
add address=102.68.152.0/22 list=CD-Block
add address=102.69.180.0/22 list=CD-Block
add address=102.135.176.0/21 list=CD-Block
add address=102.205.208.0/22 list=CD-Block
add address=102.206.8.0/24 list=CD-Block
add address=102.206.64.0/22 list=CD-Block
add address=102.206.156.0/22 list=CD-Block
add address=102.206.240.0/22 list=CD-Block
add address=102.207.144.0/23 list=CD-Block
add address=102.207.190.0/24 list=CD-Block
add address=102.207.248.0/23 list=CD-Block
add address=102.208.120.0/22 list=CD-Block
add address=102.209.212.0/22 list=CD-Block
add address=102.210.164.0/22 list=CD-Block
add address=102.210.170.0/24 list=CD-Block
add address=102.210.253.0/24 list=CD-Block
add address=102.212.12.0/24 list=CD-Block
add address=102.212.212.0/22 list=CD-Block
add address=102.213.120.0/22 list=CD-Block
add address=102.213.196.0/22 list=CD-Block
add address=102.216.240.0/22 list=CD-Block
add address=102.217.16.0/22 list=CD-Block
add address=102.217.140.0/22 list=CD-Block
add address=102.220.56.0/22 list=CD-Block
add address=102.221.96.0/23 list=CD-Block
add address=102.222.228.0/22 list=CD-Block
add address=102.223.128.0/22 list=CD-Block
add address=102.223.176.0/22 list=CD-Block
add address=102.223.208.0/22 list=CD-Block
add address=154.72.52.0/22 list=CD-Block
add address=154.73.20.0/22 list=CD-Block
add address=156.0.88.0/22 list=CD-Block
add address=156.0.198.0/24 list=CD-Block
add address=164.160.48.0/22 list=CD-Block
add address=169.159.208.0/20 list=CD-Block
add address=169.239.72.0/22 list=CD-Block
add address=169.239.156.0/22 list=CD-Block
add address=169.239.212.0/22 list=CD-Block
add address=169.255.64.0/22 list=CD-Block
add address=169.255.188.0/22 list=CD-Block
add address=169.255.204.0/22 list=CD-Block
add address=192.145.188.0/22 list=CD-Block
add address=193.110.104.0/23 list=CD-Block
add address=196.1.137.0/24 list=CD-Block
add address=196.13.110.0/24 list=CD-Block
add address=196.41.67.0/24 list=CD-Block
add address=196.49.68.0/23 list=CD-Block
add address=196.49.76.0/23 list=CD-Block
add address=196.60.64.0/24 list=CD-Block
add address=196.60.78.0/24 list=CD-Block
add address=196.60.92.0/24 list=CD-Block
add address=196.61.72.0/22 list=CD-Block
add address=196.200.192.0/20 list=CD-Block
add address=196.216.216.0/23 list=CD-Block
add address=196.223.28.0/24 list=CD-Block
add address=197.149.184.0/22 list=CD-Block
add address=197.157.208.0/22 list=CD-Block
add address=197.189.0.0/17 list=CD-Block
add address=197.215.220.0/22 list=CD-Block
add address=197.231.252.0/22 list=CD-Block

/ip firewall raw
 :if ([print count-only where src-address-list="CD-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=CD-Block comment="Block CD traffic" }
