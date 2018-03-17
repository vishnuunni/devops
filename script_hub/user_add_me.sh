#!/bin/bash
echo "Enter the username to be added :"
read u_name
useradd $u_name
mkdir -p /home/$u_name/.ssh
echo "Paste the public key here :"
read key

echo "$key" >> /home/$u_name/.ssh/authorized_keys

chown -R $u_name:$u_name /home/$u_name/
chmod -R 700 /home/$u_name/.ssh
echo "$u_name ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/$u_name_sudo
chmod 440 /etc/sudoers.d/$u_name_sudo

