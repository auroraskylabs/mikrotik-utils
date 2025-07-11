/ip firewall address-list remove [find list="MC-Block"]
/ip firewall address-list
add address=37.44.224.0/22 list=MC-Block
add address=80.94.96.0/20 list=MC-Block
add address=82.113.0.0/19 list=MC-Block
add address=87.238.104.0/21 list=MC-Block
add address=87.254.224.0/19 list=MC-Block
add address=88.209.64.0/18 list=MC-Block
add address=91.199.109.0/24 list=MC-Block
add address=91.213.192.0/24 list=MC-Block
add address=91.230.188.0/24 list=MC-Block
add address=176.114.96.0/20 list=MC-Block
add address=176.121.52.0/22 list=MC-Block
add address=185.47.116.0/22 list=MC-Block
add address=185.162.120.0/22 list=MC-Block
add address=185.193.108.0/22 list=MC-Block
add address=185.243.3.0/24 list=MC-Block
add address=185.250.4.0/22 list=MC-Block
add address=188.191.136.0/21 list=MC-Block
add address=193.34.228.0/23 list=MC-Block
add address=193.35.2.0/23 list=MC-Block
add address=195.20.192.0/23 list=MC-Block
add address=195.78.0.0/19 list=MC-Block
add address=213.133.72.0/21 list=MC-Block

/ip firewall raw
 :if ([print count-only where src-address-list="MC-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=MC-Block comment="Block MC traffic" }
