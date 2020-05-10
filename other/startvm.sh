#!/bin/sh
#Script to start virtual machine on VirtualBox
###############################################

#Check runningvms
#TBD

#Start virtualmachine in headlessmode 
VBoxManage list vms | awk '{print "VBoxHeadless --startvm " $1 " & "}' | sh

