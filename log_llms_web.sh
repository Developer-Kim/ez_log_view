#!/bin/bash

	echo "__________LOG_________"
	echo "1: access_log"
	echo "2: error_log"
	echo "3: 종료"

	read -p "입력: " log
	
	case $log in
	1)
	name="access_log";
	;;
	2)
	name="error_log";
	;;
	3)
	;;
	*)
	echo "Error: Unknown Commnad" ;;
	esac

	if [ $log -eq 1 ] || [ $log -eq 2 ]; then
	echo "__________Menu_________"
        echo "1: 일반 출력"
        echo "2: 실시간 출력"
        echo "3: 특정 날짜 파일 출력"
        echo "4: 경로 이동"
	echo "5: 종료"

	read -p "입력: " number

        case $number in
        1)
	if [ ! -e $1/$name.$(date +"%Y%m%d") ]; then
		echo "No such file!";
	else
		vi $1/$name.$(date +"%Y%m%d")
     	fi ;;

	2)
	if [ ! -e $1/$name.$(date +"%Y%m%d") ]; then
	        echo "No such file!";
	else
		tail -f $1/$name.$(date +"%Y%m%d")
     	fi ;;

	3)
        read -p "날짜 입력(yyyymmdd): " date
	if [ ! -e $1/$name.$date ]; then
        echo "No such file!";
	else
	vi $1/$name.$date
	fi ;;
        
	4)
	cd $1 ;;
	
	5)
        ;;
        
	*)
        echo "Error: Unknown Commnad" ;;
        esac

	else
		echo ""
	fi
