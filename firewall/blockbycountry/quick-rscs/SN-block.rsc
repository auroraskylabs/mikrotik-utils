/ip firewall address-list remove [find list="SN-Block"]
/ip firewall address-list
add address=41.82.0.0/15 list=SN-Block
add address=41.208.128.0/18 list=SN-Block
add address=41.214.0.0/17 list=SN-Block
add address=41.219.0.0/18 list=SN-Block
add address=102.36.136.0/22 list=SN-Block
add address=102.36.147.0/24 list=SN-Block
add address=102.164.128.0/18 list=SN-Block
add address=102.204.28.0/22 list=SN-Block
add address=102.207.140.0/24 list=SN-Block
add address=102.208.110.0/23 list=SN-Block
add address=102.209.164.0/22 list=SN-Block
add address=102.209.208.0/22 list=SN-Block
add address=102.214.191.0/24 list=SN-Block
add address=154.65.32.0/21 list=SN-Block
add address=154.73.172.0/22 list=SN-Block
add address=154.115.128.0/20 list=SN-Block
add address=154.124.0.0/15 list=SN-Block
add address=160.0.128.0/18 list=SN-Block
add address=169.239.136.0/22 list=SN-Block
add address=196.1.92.0/22 list=SN-Block
add address=196.1.96.0/22 list=SN-Block
add address=196.1.100.0/24 list=SN-Block
add address=196.49.42.0/24 list=SN-Block
add address=196.49.108.0/24 list=SN-Block
add address=196.50.8.0/21 list=SN-Block
add address=196.60.40.0/24 list=SN-Block
add address=196.60.252.0/24 list=SN-Block
add address=196.207.192.0/18 list=SN-Block
add address=196.216.188.0/22 list=SN-Block
add address=196.223.252.0/24 list=SN-Block
add address=196.250.200.0/22 list=SN-Block
add address=213.154.64.0/19 list=SN-Block

/ip firewall raw
 :if ([print count-only where src-address-list="SN-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=SN-Block comment="Block SN traffic" }
