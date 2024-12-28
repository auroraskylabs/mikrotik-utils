/ip firewall address-list remove [find list="RE-Block"]
/ip firewall address-list
add address=5.57.96.0/19 list=RE-Block
add address=41.213.128.0/17 list=RE-Block
add address=41.242.124.0/22 list=RE-Block
add address=62.61.192.0/18 list=RE-Block
add address=78.108.224.0/20 list=RE-Block
add address=80.69.208.0/20 list=RE-Block
add address=102.35.0.0/16 list=RE-Block
add address=102.135.224.0/20 list=RE-Block
add address=102.213.8.0/22 list=RE-Block
add address=102.215.220.0/23 list=RE-Block
add address=109.122.128.0/18 list=RE-Block
add address=129.122.64.0/18 list=RE-Block
add address=139.26.0.0/16 list=RE-Block
add address=154.67.0.0/16 list=RE-Block
add address=164.160.68.0/22 list=RE-Block
add address=164.160.224.0/20 list=RE-Block
add address=165.90.128.0/18 list=RE-Block
add address=165.169.0.0/16 list=RE-Block
add address=168.253.128.0/18 list=RE-Block
add address=185.147.224.0/22 list=RE-Block
add address=185.161.8.0/22 list=RE-Block
add address=185.165.32.0/22 list=RE-Block
add address=193.56.203.0/24 list=RE-Block
add address=213.55.0.0/18 list=RE-Block

/ip firewall raw
 :if ([print count-only where src-address-list="RE-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=RE-Block comment="Block RE traffic" }
