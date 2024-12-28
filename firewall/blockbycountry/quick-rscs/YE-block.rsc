/ip firewall address-list remove [find list="YE-Block"]
/ip firewall address-list
add address=5.100.160.0/21 list=YE-Block
add address=5.255.0.0/19 list=YE-Block
add address=31.31.176.0/20 list=YE-Block
add address=46.35.64.0/19 list=YE-Block
add address=46.161.224.0/19 list=YE-Block
add address=78.137.64.0/19 list=YE-Block
add address=80.253.176.0/20 list=YE-Block
add address=81.91.24.0/21 list=YE-Block
add address=82.114.160.0/19 list=YE-Block
add address=89.189.64.0/19 list=YE-Block
add address=94.26.192.0/19 list=YE-Block
add address=109.74.32.0/20 list=YE-Block
add address=109.200.160.0/19 list=YE-Block
add address=110.238.32.0/19 list=YE-Block
add address=131.117.160.0/21 list=YE-Block
add address=134.35.0.0/16 list=YE-Block
add address=175.110.0.0/18 list=YE-Block
add address=176.123.16.0/20 list=YE-Block
add address=178.130.64.0/18 list=YE-Block
add address=185.11.8.0/22 list=YE-Block
add address=185.71.132.0/22 list=YE-Block
add address=185.80.44.0/22 list=YE-Block
add address=185.80.140.0/22 list=YE-Block
add address=185.112.200.0/22 list=YE-Block
add address=185.240.64.0/22 list=YE-Block
add address=188.209.224.0/19 list=YE-Block
add address=188.240.96.0/19 list=YE-Block
add address=195.94.0.0/19 list=YE-Block
add address=213.246.0.0/19 list=YE-Block

/ip firewall raw
 :if ([print count-only where src-address-list="YE-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=YE-Block comment="Block YE traffic" }