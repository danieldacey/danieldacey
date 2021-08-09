#!/bin/bash
#title          :IpAddressesOnly.sh
#description    :Use SED to select the content to display from the bash script ip_info.sh
#author         :Daniel Dacey
#date           :20210809
#version        :1
#usage          :./IpAddressesOnly.sh
#notes          :
#bash_version   :5.0.17(1)-release
#============================================================================
net_info=$(sh ip_info.sh)
addresses=$(echo "$net_info" | sed -n '/IP Address/p')
echo -e "IP Addresses\n============"
echo -e  $addresses