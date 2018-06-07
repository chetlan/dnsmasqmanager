config = open('etc/dnsmasq.conf', 'a') { 
    domains = scope[$domainarray]
    address = scope[$returnaddress]
    domains.each do |domain|
        puts ("\n" + address + " " + domain) 
    config.close()
}