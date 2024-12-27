# mikrotik-utils
Tools and scripts for MikroTik Routers

<br>

## Firewall

<br>

### Block by Country Code

<br>

Every week, the RSC files for blocking countries are updated and the old files are compressed and archived. This is to keep all the lists up to date as these change over time as organizations acquire new ranges, transfer ranges, or forfeit them.

<br>

Having the list formatted into a RSC file allows users to quickly and easily deploy the address lists.

<br>

To download and store the quick run script onto your MikroTik device:

<br>

<pre>/tool fetch url="https://raw.githubusercontent.com/auroraskylabs/mikrotik-utils/refs/heads/main/firewall/blockbycountry/blockbycc
.rsc" mode=https dst-path="blockbycc.rsc" 
/system/script/add source=[/file get blockbycc.rsc contents] name=blockbycc
</pre>

<br>

To run the script:

<br>

<pre>/system script run blockbycc
</pre>
