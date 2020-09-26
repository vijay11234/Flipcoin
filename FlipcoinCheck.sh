#!/bin/bash -x
flipCheck=$(( 1+RANDOM%2 ))
case $flipCheck in
	1)
	echo "Heads is the winner"
	;;
	2)
	echo "Tails is the winner"
	;;
	*)
		echo "Tied"
	;;
esac
