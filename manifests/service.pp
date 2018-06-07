# dnsmasqmanager::service
# This class starts the dnsmasq service and ensures it is running.
class dnsmasqmanager::service inherits dnsmasqmanager::manager{
    service {'dnsmasq':
        ensure     => 'running',
        path       => '/etc/init.d/dnsmasq',
        enable     => true,
        hasstatus  => true,
        hasrestart => true,
    }
}