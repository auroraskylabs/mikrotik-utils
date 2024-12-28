/ip firewall address-list remove [find list="GA-Block"]
/ip firewall address-list
add address=41.78.240.0/22 list=GA-Block
add address=41.158.0.0/15 list=GA-Block
add address=41.211.128.0/18 list=GA-Block
add address=102.129.32.0/22 list=GA-Block
add address=102.134.28.0/22 list=GA-Block
add address=102.142.0.0/16 list=GA-Block
add address=102.164.124.0/22 list=GA-Block
add address=154.0.32.0/19 list=GA-Block
add address=154.0.176.0/20 list=GA-Block
add address=154.112.0.0/16 list=GA-Block
add address=154.116.0.0/17 list=GA-Block
add address=154.119.192.0/19 list=GA-Block
add address=160.119.160.0/19 list=GA-Block
add address=169.159.0.0/18 list=GA-Block
add address=169.239.148.0/22 list=GA-Block
add address=169.255.148.0/22 list=GA-Block
add address=192.188.164.0/22 list=GA-Block
add address=192.189.139.0/24 list=GA-Block
add address=192.189.140.0/24 list=GA-Block
add address=196.49.17.0/24 list=GA-Block
add address=196.50.32.0/23 list=GA-Block
add address=196.223.39.0/24 list=GA-Block
add address=197.231.64.0/18 list=GA-Block
add address=197.242.0.0/19 list=GA-Block
add address=217.77.64.0/20 list=GA-Block

/ip firewall raw
 :if ([print count-only where src-address-list="GA-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=GA-Block comment="Block GA traffic" }
