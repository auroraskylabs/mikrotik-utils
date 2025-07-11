## Firewall

### Block by Country Code

<br>

Every week, the RSC files for blocking countries are updated and the old files are compressed and archived. This is to keep all the lists up to date as these change over time as organizations acquire new ranges, transfer ranges, or forfeit them.

<br>
**To generate the rsc commands to run in mikrotik easily, check out my [CC MikroTik Generator](https://tools.aurorasky.me/github/mikrotik/ccgen.php).


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
