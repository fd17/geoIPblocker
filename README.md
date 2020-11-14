# geoIPblocker
 A simple shell script to block entire countries via IP tables.
 
 ## Requirements
  * Linux (tested on Ubuntu 18.04)
  * ipset (on Ubuntu just do `apt instsall ipset`)
  
## Execution
 make executable:
 `chmod +x blocker.sh`

 run (as root):
 `./blocker.sh <country code>`

 Example:
 `./blocker.sh ru` to block all connections coming from Russian IPs.
 
  If a rule already exists it will be overwritten.
 
 ## Persistence
  To save/restore settings use the commented lines in the script or just run it at reboot. Associated IPs may also change over time, so you may need to run the script    from time to time to stay up to date.
 
 ## Additional info
  For list of country codes and their associated IP blocks see https://www.ipdeny.com/ipblocks/
