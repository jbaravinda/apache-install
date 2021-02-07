#!/bin/bash
#This script is developed to install and run the apache web server on linux servers. 
#Please change the "APACHE_PATH" according to your requrements.

ps -aux | grep httpd


if $var -eq 0
then
	echo "This server does not configured with an Apache web server"
fi 
#################This block is ok################### 001 ##################

user_input () {
read -p "Do you want the default installation of Apache web server(Y/N)?  " -n 1 -r user_response
echo 

if [[ $user_response =~ ^[YyNn]$ ]]
then 
	case $user_response in
		Y|y)
			echo "you pressed yes"
			;;
		N|n)
			echo "you pressed no"
			;;
	esac
else
	echo "Enter Y or N"
	user_input 
fi
}

user_input
################################################### 001 ####################

echo "Enter the apache installation path: "
read APACHE_PATH

mkdir $APACHE_PATH
cd $APACHE_PATH
wget https://downloads.apache.org//httpd/httpd-2.4.46.tar.gz

tar -zxvf *tar.gz .
rm -rf *tar.gz


pwd