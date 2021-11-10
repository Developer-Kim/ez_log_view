#!/bin/bash

	echo "__________LOG_________"
	echo "1: tomcat(app-front)"
	echo "2: tomcat(app)"
	echo "3: 종료"

	read -p "입력: " log
	
	if [ $log -eq 1 ]; then

	echo "__________Menu_________"
        echo "1: 일반 출력"
        echo "2: 실시간 출력"
        echo "3: 특정 날짜 파일 출력"
        echo "4: 경로 이동"
	echo "5: 종료"

	read -p "입력: " number

        case $number in
        1)
        if [ ! -e $1/catalina.out ]; then
	echo "No such file!";
	else
	vi $1/catalina.out
     	fi ;;

	2)
	if [ ! -e $1/catalina.out ]; then
        echo "No such file!";
	else
	tail -f $1/catalina.out
     	fi ;;

	3)
        read -p "날짜 입력(yyyymmdd): " date
	if [ ! -e $1/catalina.out-$date ]; then
        echo "No such file!";
	else
	vi $1/catalina.out-$date
	fi ;;
        
	4)
	cd $1       
	;;
	
	
	5)
        ;;
        
	*)
        echo "Error: Unknown Commnad" ;;
        esac

	elif [ $log -eq 2 ]; then

	echo "__________Menu_________"
        echo "1: 일반 출력"
        echo "2: 실시간 출력"
        echo "3: 특정 날짜 파일 출력"
        echo "4: 경로 이동"
        echo "5: 종료"

	read -p "입력: " number

       	case $number in
	1)
	if [ ! -e $2/catalina.out ]; then
	echo "No such file!";
        else
        vi $2/catalina.out
	fi ;;
 
	2)
        if [ ! -e $2/catalina.out ]; then
        echo "No such file!";
        else
        tail -f $2/catalina.out
        fi ;;

	3)
        read -p "날짜 입력(yyyymmdd): " date
        if [ ! -e $2/catalina.out-$date ]; then
        echo "No such file!";
        else
        vi $2/catalina.out-$date
        fi ;;
 
	4)
        cd $2 ;;

	5)
        ;;
        *)
	echo "Error: Unknown Commnad" ;;
	esac

	else
	echo ""
	fi

