#NETWORKING STUFF#
alias ping='ping -c 5'
alias mywall='sudo ~/.mybin/./net_tables.sh'
alias net='sudo nano /etc/network/interfaces'
alias net_lis='sudo netstat -plev'
alias net_stat='sudo netstat -s'
alias putan="sudo netstat -putan"
alias Listen="sudo lsof -i | grep LISTEN"
alias hola='nmap -sn'
alias pxc='proxychains'
alias mon0='sudo airmon-ng start wlan0'
alias setmon='sudo ~/.mybin/./setmon.sh'
alias skype='LD_PRELOAD=/usr/lib/i386-linux-gnu/libv4l/v4l1compat.so skype &'
alias publ="curl http://ifconfig.me"
alias publ-v="curl http://ifconfig.me/all"
alias Tmhoney="ssh honey@n0ys3.servebeer.com -p 2233" #Take Me Home ;)
alias Tmh="ssh noyse@n0ys3.servebeer.com -p 2233" #Take Me Home ;) 
alias RAStmh="ssh noyse@192.168.0.10 -p2233" #Take Me Home Local ;) 
alias DEStmh="ssh noyse@192.168.0.233 -p2233"
alias -g relan="noyse@192.168.0.233"

##Att!!## 
#alias cert="openssl req -new -x509 -nodes -out cert.pem -keyout cert.key -days 365"
#-------------------------------------#
#ANONIMATO#
alias vid='vidalia &'
alias anonstart="cd ~/.mybin && sudo ./anonym.sh start"
alias anonstop="cd ~/.mybin && sudo ./anonym.sh stop" 
alias jon="jondofox-start &"
#-------------------------------------#
##################EOF##################
