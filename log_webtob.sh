i#!/bin/bash

	echo "__________LOG_________"
        echo "1: access.log"
        echo "2: error.log"
        echo "3: 종료"        

	read -p "입력: " log
	case $log in
	1)
	name="access.log";
	;;
	2)
	name="error.log";
	;;
	3)
	;;
	*)
	echo "Error: Unknown Command" ;;
	esac
	
	echo "__________Menu_________"
        echo "1: 일반 출력"
        echo "2: 실시간 출력"
        echo "3: 특정 날짜 파일 출력"
        echo "4: 경로 이동"
	echo "5: 종료"

	read -p "입력: " number

        case $number in
        1)
	if [ ! -e $1/$name\_$(date +"%m%d%Y") ]; then
		echo "No such file!";
		echo $1/$name\_$(date +"%m%d%Y")
	else
		vi $1/$name\_$(date +"%m%d%Y")
	fi
	;;
	
	2)
	if [ ! -e $1/$name\_$(date +"%m%d%Y") ]; then
        	echo "No such file!";
	else
		tail -f $1/$name\_$(date +"%m%d%Y")
	fi
	;;
	
	3)
    	read -p "날짜 입력(yyyymmdd): " date
	if [ ! -e $1/$name\_$(date -d $date +"%m%d%Y") ]; then
        echo "No such file!";
	else
		vi $1/$name\_$(date -d $date +"%m%d%Y")
	fi ;;
        
	4)
	cd $1 ;;
	
	5)
        ;;
        
	*)
        echo "Error: Unknown Commnad" ;;
        esac
