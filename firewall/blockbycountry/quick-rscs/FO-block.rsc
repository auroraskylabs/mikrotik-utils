/ip firewall address-list remove [find list="FO-Block"]
/ip firewall address-list
add address=46.227.112.0/21 list=FO-Block
add address=80.77.128.0/20 list=FO-Block
add address=81.18.224.0/20 list=FO-Block
add address=81.25.176.0/20 list=FO-Block
add address=88.85.32.0/19 list=FO-Block
add address=178.19.192.0/20 list=FO-Block
add address=185.74.208.0/22 list=FO-Block
add address=185.88.228.0/22 list=FO-Block
add address=185.171.172.0/22 list=FO-Block
add address=193.34.104.0/22 list=FO-Block
add address=195.80.36.0/22 list=FO-Block
add address=198.137.136.0/22 list=FO-Block
add address=212.55.32.0/19 list=FO-Block
add address=217.172.80.0/20 list=FO-Block

/ip firewall raw
 :if ([print count-only where src-address-list="FO-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=FO-Block comment="Block FO traffic" }
