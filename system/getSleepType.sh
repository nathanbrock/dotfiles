#!/bin/sh

function getSleepType {
	HMODE=$(pmset -g live | grep hibernatemode | grep -Eo '[0-9]{1,2}')
	case $HMODE in
	[0]*)
		Message="Sleeping Fast"
		;;
	[3]*)
		Message="Sleeping Default"
		;;
	[25]*)
		Message="Sleeping Safe"
		;;
	*)
		Message="Sleeping Confused"
		;;
	esac
	
	echo $Message
}

if [ "${1}" != "--source-only" ]; then
    main "${@}"
fi