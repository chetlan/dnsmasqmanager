# dnsmasqmanager::manager
# This class includes all subclasses for this module.
# It also calls the dnsmasqmanager::versionfact method, which adds a custom fact that returns the version of dnsmasq.
class dnsmasqmanager::manager($domainarray=['bob.com','alice.com']){
    $returnaddress = '1.2.3.4'
    include dnsmasqmanager::manager::service
    include dnsmasqmanager::manager::config
    dnsmasqmanager::versionfact()
}