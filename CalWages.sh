#!/bin/bash -x
IS_PART_TIME=1;
IS_FULL_TIME=2;
TOTAL_SALARY=0;
HOURLY_RATE=20;
MAX_MONTH_HOURS=10;
NUM_WORKING_DAYS=20;

totalEmpHours=0;
totalWorkingDays=0;

while [[ $totalEmpHours -lt $MAX_MONTH_HOURS && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
	((totalWorkingDays++));
	empCheck=$(( RANDOM % 3 ));
	case $empCheck in
		$IS_FULL_TIME)
			empHours=8;
			;;
		$IS_PART_TIME)
			empHours=4;
			;;
		*)
			empHours=0;
			;;
	esac
	totalEmpHours=$(( $totalEmpHours + $empHours ))
done
TOTAL_SALARY=$(( $totalEmpHours*$HOURLY_RATE ));
echo Monthly Wage=$TOTAL_SALARY
