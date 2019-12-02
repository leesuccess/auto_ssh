#!/bin/bash
read -p "pls print the user and password of server: " user pass
user=$user
password=$pass

echo $user","$password
ip_arry=(`cat ./ip_arry`)


for ip in ${ip_arry[@]};
do 
	sshpass -p${password} ssh-copy-id -i /root/.ssh/id_rsa.pub $user@$ip -p22 -o StrictHostKeyChecking=no
done