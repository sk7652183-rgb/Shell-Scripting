#!/bin/bash

# A function check_disk that checks disk usage of / using df -h

function check_disk () {
	echo "The available space of disk / is " 
	df -h | awk 'NR==3 {print $4}'

}

# A function check_memory that checks free memory using free -h

function check_memory() {
	echo "The available memory is"
	free -h | awk 'NR==2 {print $7}'
}


# A main section that calls both and prints the results

check_disk
check_memory
