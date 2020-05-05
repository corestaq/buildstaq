#!/bin/bash
#
#

DISTRO=`cat /etc/os-release | grep VERSION_ID | cut -d \" -f 2`

case "$DISTRO" in
	"20.04")
		eval `cat conf/deps.conf | grep UBUNTU20` ; sudo apt-get install $UBUNTU20
		;;
	"18.04")
		eval `cat conf/deps.conf | grep UBUNTU18` ; sudo apt-get install $UBUNTU18
		;;
esac

