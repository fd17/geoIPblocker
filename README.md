# geoIPblocker
 A simple shell script to block entire countries via IP tables.
 
 ## Requirements
  * Linux (tested on Ubuntu 18.04)
  * ipset (on Ubuntu just do `apt instsall ipset`)
  
## Execution
 make executable:
 `chmod +x blocker.sh`

 run (as root)
 `./blocker.sh <country code>`

 Example:
 `./blocker.sh ru` to block all connections coming from Russian IPs.
 
 ## Additional info
  For list of country codes and their associated IP blocks see https://www.ipdeny.com/ipblocks/
