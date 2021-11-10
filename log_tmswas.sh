#!/bin/bash

	echo "__________LOG_________"
	echo "1: tomcat (back)"
	echo "2: tomcat (front)"
	echo "3: tomcat (api)"
	echo "4: 종료"

	read -p "입력: " log
	
	if [ $log -eq 1 ]; then
	echo "__________Menu_________"
        echo "1: 일반 출력"
        echo "2: 실시간 출력"
        echo "3: 경로 이동"
	echo "4: 종료"

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
	cd $1 ;;
	
	4)
        ;;
        
	*)
        echo "Error: Unknown Commnad" ;;
        esac
	
	elif [ $log -eq 2 ]; then
        echo "__________Menu_________"
        echo "1: 일반 출력"
        echo "2: 실시간 출력"
        echo "3: 경로 이동"
        echo "4: 종료"

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
        cd $2 ;;

        4)
        ;;

        *)
        echo "Error: Unknown Commnad" ;;
        esac

	elif [ $log -eq 3 ]; then
        echo "__________Menu_________"
        echo "1: 일반 출력"
        echo "2: 실시간 출력"
        echo "3: 경로 이동"
        echo "4: 종료"

        read -p "입력: " number

        case $number in
        1)
        if [ ! -e $3/catalina.out ]; then
        echo "No such file!";
        else
        vi $3/catalina.out
        fi ;;

        2)
        if [ ! -e $3/catalina.out ]; then
        echo "No such file!";
        else
        tail -f $3/catalina.out
        fi ;;

        3)
        cd $3 ;;

        4)
        ;;

        *)
        echo "Error: Unknown Commnad" ;;
        esac
	fi
