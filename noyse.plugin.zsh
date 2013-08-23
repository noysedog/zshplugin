## FUNZIONI ##
function sysclean()
{
	printf "\nCLEANER: Processing apt-get clean...\n\n"
		sudo apt-get clean
	printf "\nCLEANER: clean done.\n"
	printf "\nCLEANER: Processing apt-get autoclean...\n\n"
		sudo apt-get autoclean  
	printf "\nCLEANER: autoclean done.\n"
	printf "\nCLEANER: Processing apt-get autoremove...\n\n"
		sudo apt-get autoremove  
	printf "\nCLEANER: autoremove done.\n"

		lista="./eliminabili.txt"

	printf "\nCLEANER: Generating the list of removed application's comfiguration files..."
	( sudo dpkg -l | grep -E "^rc" | cut -f3 -d' ' ) > $lista
	printf " done. (List saved in %s)" $lista

	printf "\nCLEANER: Start cleaning..."
	for file in $(cat $lista)
		do
			sudo dpkg --purge $file
		done

	printf "\nCLEANER: done.\n"
#exit 0
}

function aspe()
{
	#Pensaci un attimo#
	echo "Pensaci un attimo:"
	echo "Hai 10 secondi per decidere..."
	for i in {0..9}; do echo -ne "."; sleep 1; done
}

function ripigliami()
{
	#Quando sei perso, e non sai che fare
	#questa funzione fa a caso tuo!!
	echo "Sei qui: $PWD"
	echo "Sei tu, coglione: `whoami` "
	echo "Con questo UID: $UID"
	echo "Alle: `date '+%X' `"
	echo "Up: `uptime`"
	echo "Non ti sei ancora ripigliato?"
}

#NETWORKING STUFF#
alias ping="ping -c 5"
alias mywall="sudo ~/Bin/./net_tables.sh"
alias net="sudo nano /etc/network/interfaces"
alias net_lis="sudo netstat -plev"
alias net_stat="sudo netstat -s"
alias hola="nmap -sn"
alias pxc="proxychains"
alias mon0="sudo airmon-ng start wlan0"
alias setmon="sudo ~/Bin/./setmon.sh"
alias skype='LD_PRELOAD=/usr/lib/i386-linux-gnu/libv4l/v4l1compat.so skype &'
alias publ="curl ifconfig.me"
alias publ-v="curl ifconfig.me/all"
alias tmh="ssh weveg@pubb.ip.lol" #Take Me Home ;) 
##Att!!##
#alias cert="openssl req -new -x509 -nodes -out cert.pem -keyout cert.key -days 365"


#VARIE#
alias -s {png,jpg,JPG,jpeg}=xdg-open
#alias -s {txt,sh,php,py,pl,rb}=gedit
alias -s {ogg,flac,mpg,mpeg,avi,ogm,wmv,m4v,mp4,mov}=vlc
#-------------------------------------------
alias ora="date '+%X'"
alias giorno="date '+%D'"
alias crypt="sudo truecrypt"	#Run truecrypt
alias estraigz="tar -zxvf"	#estract tar.gz
alias estraibz="tar -jxvf"	#estract tar.bz2
alias pressa="tar -cf"		#build tar
alias scroto="scrot -c -d 5"
alias cl="clear"		#clear console
alias elimina="rm -rf"
alias l+="ls */**"
alias ls='ls --color=auto'
alias -g nano='nano -q'
alias -g N="> /dev/null"
alias -g G='| grep'
alias -g C="| ccze -A"
alias -g line='| wc -l'
alias -g Sn='| sort -n'
alias -g Snr='| sort -nr'
alias duf='du -s *(/N) | sort -nr | cut -f 2- | while read a; do du -sh "$a"; done'
#-------------------------------------------
alias helfo="cat ~/Bin/helfo.txt"	#print this file plus other config
alias helmod="nano ~/Bin/helfo.txt"	#edit my own help file
alias zconoyse="nano ~/.oh-my-zsh/plugins/noyse/noyse.plugin.zsh" #edit this file
alias zsource="source ~/.zshrc" 	#source zsh config file

#FLUXBOX#
alias flux_menu="nano .fluxbox/fluxbox-menu "
alias flux_start="nano .fluxbox/startup"
alias flux_app="nano .fluxbox/apps "

#ANON#
alias anon="~/Bin/tor/./start &"

#SEC TOOL#
alias vega="sudo ~/Bin/vega/./Vega"
alias arpwner="sudo python ~/Bin/arpwner/./main.py"
alias strip="sudo ~/Bin/./autostrip.sh"
alias karma="sudo ~/Bin/./karmaplay.sh"
alias metpay="sudo ~/Bin/./MetPay.sh"
alias w3af="sudo python ~/Bin/w3af/w3af_gui"
alias gerix="sudo python ~/Bin/gerix-wifi-cracker-master/./gerix.py"
alias dnschef="sudo python ~/Bin/dnschef/./dnschef.py"

#APT#
alias agd="sudo apt-get update"
alias agg="sudo apt-get upgrade"
alias adu="sudo apt-get dist-upgrade"
alias agi="sudo apt-get -y install"
alias agr="sudo apt-get remove"
alias agar="sudo apt-get autoremove"
alias agc="sudo apt-get clean"
alias agac="sudo apt-get autoclean"
alias acs="sudo apt-cache search"
alias repo="sudo nano /etc/apt/sources.list"
alias instdeb="sudo dpkg -i"

#SYSTEM#
alias tool_upd="sudo backbox-update"	 
alias log_kern="colortail -n 25 -f /var/log/kern.log"	   
alias log_sys="colortail -n 25 -f /var/log/syslog"	 
alias log_auth="colortail -n25 -f /var/log/auth.log"	 
alias forum="firefox http://forum.backbox.org/ &"  
alias crypt="sudo truecrypt"	
#---------------------------------------	 
alias rw-='chmod 600'
alias rwx='chmod 700'
alias r--='chmod 644'
alias r-x='chmod 755'
#---------------------------------------
alias gpsea='gpg --search-keys'
alias gplst='gpg --list-keys --with-fingerprint'
alias gpsig='gpg --list-sigs'
alias db='sudo /etc/init.d/postgresql start'
#---------------------------------------
alias msf='sudo msfconsole'
alias sniff='sudo ettercap -G &'
alias shark='sudo wireshark &'
alias anon='vidalia &'
