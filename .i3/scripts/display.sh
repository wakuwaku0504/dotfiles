#!/bin/bash

# get info from xrandr
connectedOutputs=$(xrandr | grep connected | grep  HDMI-2 | sed -e "s@\([A-Z0-9]\+\) connected.*@\1@")

# initialize variables
execute="xrandr "
default="xrandr "
i=1

for display in $connectedOutputs
do
	# build default configuration
	if [ $i -eq 1 ]
	then
		default=$default"--output $display --auto "
	else
		default=$default"--output $display --off "
	fi

	# build "switching" configuration
	if [ $switch -eq 1 ]
	then
		execute=$execute"--output $display --auto "
		switch=0
	else
		execute=$execute"--output $display --off "
	fi

	# check whether the next output should be switched on
	if [ $display = $activeOutput ]
	then
		switch=1
	fi

	i=$(( $i + 1 ))
done


