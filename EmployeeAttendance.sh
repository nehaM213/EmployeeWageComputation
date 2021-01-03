#!/bin/bash -x

absent=0;
randomCheck=$(( RANDOM % 2 ));
if [ $randomCheck -eq $absent ];
	then
		echo employee is absent;
	else
	        echo employee is present;
	fi
