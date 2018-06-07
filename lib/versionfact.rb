Puppet::Functions.create_function('dnsmasqmanager::versionfact')
Facter.add('dnsmasq_version') do
      setcode 'dnsmasq --version'
end