Facter.add('dnsmasq_version') do
      setcode 'dnsmasq --version'
end