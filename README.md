
# dnsmasqmanager

#### Table of Contents

1. [Description](#description)
2. [Setup - The basics of getting started with dnsmasqmanager](#setup)
    * [What dnsmasqmanager affects](#what-dnsmasqmanager-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with dnsmasqmanager](#beginning-with-dnsmasqmanager)
3. [Usage - Configuration options and additional functionality](#usage)
4. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Description

This module takes a list of domains (bob.com & alice.com) and responds with spoofed DNS lookup results (1.2.3.4). 

This list can be changed by changing the manager.pp class' parameter and the spoofed results can be changed by changing global variable in the manager.pp class. 

## Setup

dnsmasqmanager adds to the contents of the dnsmasq.config file and ensures that the service is running. 

The installation of dnsmasq on the machine is a requirement.

This module runs on Linux. Tested on Ubuntu 16.04 LTS.


### Beginning with dnsmasqmanager

The very basic steps needed for a user to get the module up and running. This can include setup steps, if necessary, or it can be an example of the most basic use of the module.

## Usage

This section is where you describe how to customize, configure, and do the fancy stuff with your module here. It's especially helpful if you include usage examples and code samples for doing things with your module.

## Reference
Classes: 
  config.pp
    Description - ensures dnsmasq files are present on the machine and appends lines for spoofing.

  manager.pp
    Parameters:
      $domainarray - a list of domains to spoof.
    Function:
      Declares global variable $returnaddress
      Call to function versionfact.rb

  service.pp
    Description - starts the dnsmasq service and ensures it is running.

Functions:
  versionfact.rb
    Description: adds custom fact returning the version of dnsmasq.
  
  config2.rb
    Description: uses the $domainarray list to add specific lines containing the addresses and the address they will return $returnaddress (1.2.3.4).


## Limitations

Only tested on Linux version 4.13

## Development
Developed by Chetlan Israel for Onyx Point, Inc. as skills evaluation exercise. 