#!/bin/bash

	echo "__________LOG_________"
        echo "1: access_log"
        echo "2: error_log"
        echo "3: ssl_access_log"
	echo "4: ssl_error_log"
        echo "5: 종료"        

	read -p "입력: " log
	case $log in
	1)
	name="access_log";
	;;
	2)
	name="error_log";
	;;
	3)
	name="ssl_access_log";
	;;
	4)
	name="ssl_error_log";
	;;
	5)
	;;
	*)
	echo "Error: Unknown Command" ;;
	esac
	
	if [ $log -eq 1 ] || [ $log -eq 2 ] || [ $log -eq 3 ] || [ $log -eq 4 ]; then
	echo "__________Menu_________"
        echo "1: 일반 출력"
        echo "2: 실시간 출력"
        echo "3: 특정 날짜 파일 출력"
        echo "4: 경로 이동"
	echo "5: 종료"

	read -p "입력: " number

        case $number in
        1)
	if [ ! -e $1/$name ]; then
		echo "No such file!";
	else
		vi $1/$name
	fi
	;;
	
	2)
	if [ ! -e $1/$name ]; then
                echo "No such file!";
	else
		tail -f $1/$name
	fi
        ;;
	
	3)
    	read -p "날짜 입력(yyyymmdd): " date
	if [ ! -e $1/$name-$(date -d $date +"%Y%m%d") ]; then
        echo "No such file!";
	else
		vi $1/$name-$(date -d $date +"%Y%m%d")
	fi ;;
        
	4)
	cd $1 ;;
	
	5)
        ;;
        
	*)
        echo "Error: Unknown Commnad" ;;
        esac
	fi
