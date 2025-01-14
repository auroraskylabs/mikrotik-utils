/ip firewall address-list remove [find list="DM-Block"]
/ip firewall address-list
add address=23.186.240.0/24 list=DM-Block
add address=45.9.148.0/22 list=DM-Block
add address=66.118.36.0/22 list=DM-Block
add address=69.12.108.0/22 list=DM-Block
add address=104.153.248.0/22 list=DM-Block
add address=104.245.204.0/22 list=DM-Block
add address=162.213.168.0/22 list=DM-Block
add address=162.253.100.0/22 list=DM-Block
add address=192.243.48.0/20 list=DM-Block
add address=193.169.160.0/23 list=DM-Block
add address=198.101.28.0/22 list=DM-Block
add address=199.127.196.0/22 list=DM-Block
add address=206.53.141.0/24 list=DM-Block
add address=216.162.201.0/24 list=DM-Block

/ip firewall raw
 :if ([print count-only where src-address-list="DM-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=DM-Block comment="Block DM traffic" }
