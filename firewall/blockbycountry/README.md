## Firewall

### Block by Country Code

<br>

Every week, the RSC files for blocking countries are updated and the old files are compressed and archived. This is to keep all the lists up to date as these change over time as organizations acquire new ranges, transfer ranges, or forfeit them.

<br>

 [CC MikroTik Generator](https://tools.aurorasky.me/github/mikrotik/ccgen.php) - My tool to help generate a single script to run.


<br>

Having the list formatted into a RSC file allows users to quickly and easily deploy the address lists.

<br>

Quick Setup Scripts: (Quick-Rscs)

<br>

To download and run script on your MikroTik device: (Change $CC for the country code needed)

<br>

<pre>/tool fetch url="https://raw.githubusercontent.com/auroraskylabs/mikrotik-utils/refs/heads/main/firewall/blockbycountry/quick-rscs/$CC-block.rsc" mode=https 
/import file-name="$CC-block.rsc"
</pre>

<br>

Quick RSCs:

1. Remove any old address-list entries previously added. This insures that no ranges that are no longer part of that country do not linger,
2. Adds all the address-list entries.
3. Adds a RAW Prerouting Drop rule with the address-list as a src-address-list. RAW rules are preferred, as they do not bog down your router like filters. **This checks to make sure the rule does not already exist before adding, as not to flood your rule list with duplicates.**

<!-- -->

<br>

You can add this to a script in System >> Scripts >> Add, then set it to run every week to update the address lists automatically.


### ROOT DNS Nameserver Addition

<br>

In time I found that I was encountering issues with certain TLDs — namely, I was unable to access DNS for them. This was because the TLS Root nameservers are scattered throughout the globe and blocking certain countries would also block access to the TLD Root Nameservers.

<br>

I have added ROOT DNS to the blockbycountry scripts which creates a new address list and accept rule for all global TLD Root Nameservers.

<br> If you are running your own nameserver, you are going to want to make sure to utilize this whitelist.
