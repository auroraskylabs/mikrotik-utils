/ip firewall address-list remove [find list="WS-Block"]
/ip firewall address-list
add address=43.241.164.0/22 list=WS-Block
add address=103.9.228.0/22 list=WS-Block
add address=103.55.178.0/24 list=WS-Block
add address=103.63.27.0/24 list=WS-Block
add address=103.131.62.0/23 list=WS-Block
add address=103.143.149.0/24 list=WS-Block
add address=103.154.194.0/23 list=WS-Block
add address=110.5.112.0/22 list=WS-Block
add address=123.176.72.0/21 list=WS-Block
add address=160.25.96.0/23 list=WS-Block
add address=182.50.72.0/22 list=WS-Block
add address=182.50.168.0/22 list=WS-Block
add address=202.4.32.0/19 list=WS-Block
add address=202.87.208.0/22 list=WS-Block
add address=203.99.156.0/22 list=WS-Block
add address=203.99.255.0/24 list=WS-Block

/ip firewall raw
 :if ([print count-only where src-address-list="WS-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=WS-Block comment="Block WS traffic" }