# macchanger-bash-script
Automated Bash script to run in Kali Linux

You need to go into the file and edit the interface name to match yours. For example: 

wlanDOWN = $(ifconfig wlan0 down)

Yours may be different (wlan1, etc). 

Once that's done, then just run via terminal: 

./macchanger.sh
