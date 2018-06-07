# dnsmasqmanager::config
# This class appends some important lines for spoofing to the config file.
# It also includes a call to the dnsmasqmanager::config2 method, which adds the domains and addresses they will return.
class dnsmasqmanager::config inherits dnsmasqmanager{
    file {'/etc/dnsmasq.conf':
        ensure => present,
        path   => '/etc/dnsmasq.conf',
    }
    file_line {'append to /etc/dnsmasq.conf':
        path => '/etc/dnsmasq.conf',
        line => '\nserver = 208.67.222.222\nserver = 208.67.220.220\nlisten-address=127.0.0.1\nlisten-address = {+$::ipaddress}\nno-dhcp-interface=\nno-hosts\naddn-hosts=/etc/dnsmasq.d/spoof.hosts\n',
    }
    dnsmasqmanager::config2()
}