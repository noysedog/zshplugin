#versione:      2.0.1.7
#data.Agg:      14/03/19

#--NETWORKING STUFF----------------------#
alias ping='ping -c 5'
alias pongle='ping -c 3 8.8.8.8'
alias net='nano /etc/network/interfaces'
alias net_lis='_ netstat -plev'
alias net_stat='_ netstat -s'
alias putan="_ netstat -putan"
alias Listen="_ lsof -i | grep LISTEN"
alias -g  pxc='proxychains'
alias publ="curl icanhazip.com"
#alias publ-v="curl http://ifconfig.me/all"

#--SSH----------------------------------# Only Public key
alias RAS='ssh noyse@192.168.178.22 -p2233'
alias MINIDOG='ssh noyse@192.168.178.30'
alias LAPDOG='ssh noyse@192.168.178.21'


#--SCRIPT-------------------------------#
alias mywall='~/.mybin/./net_tables.sh'
alias hola='~/.mybin/./hola.sh'

#SOCAT#
alias soc="socat TCP4-LISTEN:4444 STDOUT"

#--ANONIMATO----------------------------#
alias vid='vidalia &'
#alias anonstart="cd ~/.mybin && ./anonym.sh start"
#alias anonstop="cd ~/.mybin &&  ./anonym.sh stop"
alias -g VPN="openvpn --config"
alias xanax="openvpn --config ~/.mybin/xanax.ovpn && sleep 5 && mv /etc/resolv.conf /etc/resolv.conf.bk && cp ~/.mybin/res.conf /etc/resolv.conf"
#-------------------------------------#
##################EOF##################
