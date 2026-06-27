#!/bin/bash

service_name="nginx"

read -p "Do you want to check the status? (y/n)" service

if [[ $service == "y" ]];then
	echo "The status of the Service is Active: "
	sudo systemctl status $service_name
else
	echo " skipped checking the service"

fi
