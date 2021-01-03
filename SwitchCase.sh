#!/bin/bash -x

isPresent=1;
isPartime=2;
fullHours=12;
partHours=8;
hourlyWages=20;
dailyWage=0;
randomCheck=$(( RANDOM % 3 ));

case $randomCheck in

	$isPartime)
		echo Employee is partime
                dailyWage=$(( $hourlyWages * $partHours ));
			;;
	$isPresent)
                echo Employee is fulltime
                dailyWage=$(( $hourlyWages * $fullHours ));
                        ;;

	*)
                echo absent
        esac
