#!/bin/bash -x

isPresent=1;
isPartime=2;
fullHours=12;
partHours=8;
hourlyWage=20;
dailyWage=0;
randomCheck=$(( RANDOM % 3 ));
if [ $randomCheck -eq $isPartime ];
	then
	        echo Employee is partime
	        dailyWage=$(( $hourlyWage * $partHours ));
	elif [ $randomCheck -eq $isPresent ];
	then
	        echo Employee is fulltime
	        dailyWage=$(( $hourlyWage * $fullHours ));
	else
	        echo employee is absent
	fi
