#!/bin/bash

#Automated macchanger script

wlanDOWN=$(ifconfig wlan0 down)

change_mac=$(macchanger -r wlan0)

wlanUP=$(ifconfig wlan0 up)

verify=$(macchanger --show wlan0)

network_connect=$(sudo service network-manager start)

progress[0]="-"
progress[1]="\\"
progress[2]="|"
progress[3]="/"

printf "%s\n" "$wlanDOWN"
printf "%s\n" "$change_mac"
printf "%s\n" "$wlanUP"
printf "%s\n" "$verify"

printf "%s\n" "To return to permanent mac address type 'macchanger --permanent <interface name>

printf "%s\n" "$network_connect"

echo -n "[Reconnecting ] ${progress[0]}"

for i in "${progress[@]}"
do
       (echo -ne "\b$i" & sleep 1 & wait)
done
printf "%s\n"
echo "You are now connected"
echo "Ready to spoof IP Addr: "


