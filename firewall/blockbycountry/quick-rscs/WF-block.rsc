/ip firewall address-list remove [find list="WF-Block"]
/ip firewall address-list
add address=27.125.192.0/22 list=WF-Block
add address=103.235.110.0/23 list=WF-Block
add address=117.20.32.0/21 list=WF-Block

/ip firewall raw
 :if ([print count-only where src-address-list="WF-Block"] = "0") do={ add chain=prerouting action=drop src-address-list=WF-Block comment="Block WF traffic" }
