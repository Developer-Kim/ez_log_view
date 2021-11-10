#!/bin/bash

	echo "__________LOG_________"
        echo "1: project-lottehotel.log"
        echo "2: access.log"
        echo "3: error.log"
        echo "4: 종료"        

	read -p "입력: " log
	case $log in
	1)
	name="project-lottehotel.log";
	;;
	2)
	name="access.log";
	;;
	3)
	name="error.log";
	;;
	4)
	;;
	*)
	echo "Error: Unknown Command" ;;
	esac
	
	if [ $log -eq 1 ] || [ $log -eq 2 ] || [ $log -eq 3 ]; then
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
	if [ ! -e $1/$name.$(date -d $date +"%Y-%m-%d") ]; then
        	echo "No such file!";
	else
		vi $1/$name.$(date -d $date +"%Y-%m-%d")
	fi ;;
        
	4)
	cd $1 ;;
	
	5)
        ;;
        
	*)
        echo "Error: Unknown Commnad" ;;
        esac
	fi
