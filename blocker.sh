ID="$1"

# download ip ranges
wget https://www.ipdeny.com/ipblocks/data/countries/$ID.zone -O country.zone

# remove old entries if they exist
iptables -D INPUT -m set --match-set $ID src -j DROP 2>/dev/null
ipset destroy $ID 2>/dev/null

# create new rules
ipset create $ID nethash
for i in $(cat ./country.zone ); do ipset add $ID $i; done
iptables -A INPUT -m set --match-set $ID src -j DROP

# cleanup
rm ./country.zone
echo "Done."

# uncomment to save config
#ipset save > /etc/ipset.rules
#iptables-save > /etc/iptables.rules

# use this to restore config
#ipset restore < /etc/ipset.rules
#iptables-restore < /etc/iptables.rules