#!/bin/sh
#Script to start virtual machine on VirtualBox
###############################################

#Check runningvms
#TBD

#Start virtualmachine
VBoxManage list vms | awk '{print "VBoxHeadless --startvm " $1 " & "}' | sh
echo "VBoxHeadless returncode: $?"

#List running virtual machine
echo "Running virtual machine:\n"
VBoxManage list runningvms
