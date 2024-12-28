/ip firewall address-list remove [find list="IM-Block"]
/ip firewall address-list
add address=5.62.80.0/20 list=IM-Block
add address=5.253.76.0/22 list=IM-Block
add address=31.130.208.0/21 list=IM-Block
add address=37.10.116.0/24 list=IM-Block
add address=37.18.136.0/21 list=IM-Block
add address=37.25.88.0/21 list=IM-Block
add address=43.225.112.0/22 list=IM-Block
add address=45.85.4.0/22 list=IM-Block
add address=45.85.196.0/22 list=IM-Block
add address=46.31.200.0/21 list=IM-Block
add address=46.226.184.0/21 list=IM-Block
add address=66.84.64.0/20 list=IM-Block
add address=66.132.133.0/24 list=IM-Block
add address=77.87.176.0/21 list=IM-Block
add address=78.24.208.0/21 list=IM-Block
add address=79.170.32.0/21 list=IM-Block
add address=80.65.240.0/20 list=IM-Block
add address=81.27.96.0/20 list=IM-Block
add address=81.88.160.0/20 list=IM-Block
add address=83.218.0.0/19 list=IM-Block
add address=84.246.200.0/21 list=IM-Block
add address=85.184.200.0/21 list=IM-Block
add address=85.184.208.0/20 list=IM-Block
add address=87.254.64.0/19 list=IM-Block
add address=89.107.0.0/21 list=IM-Block
add address=91.199.83.0/24 list=IM-Block
add address=91.206.144.0/23 list=IM-Block
add address=91.211.96.0/22 list=IM-Block
add address=91.223.161.0/24 list=IM-Block
add address=92.39.192.0/20 list=IM-Block
add address=94.125.56.0/21 list=IM-Block
add address=103.214.248.0/23 list=IM-Block
add address=109.70.40.0/21 list=IM-Block
add address=109.202.112.0/21 list=IM-Block
add address=146.247.48.0/20 list=IM-Block
add address=178.16.0.0/20 list=IM-Block
add address=178.211.144.0/24 list=IM-Block
add address=178.217.93.0/24 list=IM-Block
add address=185.1.178.0/24 list=IM-Block
add address=185.16.0.0/22 list=IM-Block
add address=185.28.72.0/22 list=IM-Block
add address=185.48.76.0/22 list=IM-Block
add address=185.60.88.0/22 list=IM-Block
add address=185.63.184.0/22 list=IM-Block
add address=185.64.144.0/22 list=IM-Block
add address=185.74.56.0/22 list=IM-Block
add address=185.90.216.0/22 list=IM-Block
add address=185.180.168.0/22 list=IM-Block
add address=185.184.229.0/24 list=IM-Block
add address=193.28.159.0/24 list=IM-Block
add address=193.31.208.0/20 list=IM-Block
add address=193.33.228.0/23 list=IM-Block
add address=193.143.248.0/24 list=IM-Block
add address=193.219.111.0/24 list=IM-Block
add address=195.10.96.0/19 list=IM-Block
add address=213.137.0.0/19 list=IM-Block
add address=217.23.160.0/20 list=IM-Block
add address=217.28.0.0/20 list=IM-Block

/ip firewall raw
 :if ([print count-only where src-address-list="IM-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=IM-Block comment="Block IM traffic" }
