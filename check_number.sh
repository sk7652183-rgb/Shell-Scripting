#!/bin/bash


read -p "Enter the number: " num

if [[ $num -gt 0 ]] ; then
	echo " The Given $num is postive"
elif [[ $num -lt 0 ]] ; then
	echo " The Given $num is negative"
else
	echo " The Given $num is zero"
fi

