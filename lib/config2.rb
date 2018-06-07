Puppet::Functions.create_function('dnsmasqmanager::config2')
config = open('etc/dnsmasq.conf', 'a') { 
    domains = scope[$domainarray]
    domains.each do |domain|
        puts ("\n1.2.3.4 " + domain) 
    config.close()
}