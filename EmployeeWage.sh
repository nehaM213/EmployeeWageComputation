#!/bin/bash -x
absent=0;
hours=8;
hourlyWages=20;
dailyWage=0;
randomCheck=$(( RANDOM % 2 ));
if [ $randomCheck -eq $absent ];
	then
	        echo employee is absent;
	else
	        echo employee is present;
	        dailyWage=$(( $hours * $hourlyWages ));
	fi
echo dailywage of employee is $dailyWage

