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
	echo "Sei tu: `whoami` "
	echo "Con questo UID: $UID"
	echo "Alle: `date '+%X' `"
	echo "Up: `uptime`"
	echo "Non ti sei ancora ripigliato?"
}

#function rawr() {
#	cd ~/.mybin/rawr
#	sudo python ./rawr.py 
#	echo -e  "\nDo u want see the map?"
#	echo -e  "\nWhen rawr finish press y, else press any"
#	read risp
#	if [ $risp == y ]
#		then
#			for imm in $(ls log_*/maps/*.png) 
#				do 
#					xdg-open $imm 
#				done
#		else	
#			echo " "
#	fi
#exit 0
#}	

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
alias tmh="ssh noyse@...."
alias tmh_LOC="ssh noyse@...."
##Att!!## 
#alias cert="openssl req -new -x509 -nodes -out cert.pem -keyout cert.key -days 365"


#VARIE#
alias -s {png,jpg,JPG,jpeg}=feh
#alias -s {txt,sh,php,py,pl,rb}=gedit
alias -s {ogg,flac,mpg,mpeg,avi,ogm,wmv,m4v,mp4,mov}=vlc
#-------------------------------------------
alias ora="date '+%X'"
alias giorno="date '+%D'"
alias crypt='sudo truecrypt'	#Run truecrypt
alias estraigz='tar -zxvf'	#estract tar.gz
alias estraibz='tar -jxvf'	#estract tar.bz2
alias pressa='tar -cf'		#build tar
alias scroto='scrot -c -d 5'
alias cl='clear'		#clear console
alias elimina='rm -rf'
alias l+='ls */**'
alias ls='ls --color=auto'
#-------------------------------------------
#alias -g nano='nano'
alias -g N='> /dev/null'
alias -g G='| grep'
alias -g C='| ccze -A'
alias -g line='| wc -l'
alias -g Sn='| sort -n'
alias -g Snr='| sort -nr'
alias duf='du -s *(/N) | sort -nr | cut -f 2- | while read a; do du -sh "$a"; done'
#-------------------------------------------
alias helfo='cat ~/.mybin/helfo.txt'	#print this file plus other config
alias helmod='nano ~/.mybin/helfo.txt'	#edit my own help file
alias zconoyse='nano ~/.oh-my-zsh/plugins/noyse/noyse.plugin.zsh' #edit this file
alias zrcmod='nano ~/.zshrc' #edit zshrc
alias zsource='source ~/.zshrc' 	#source zsh config file
alias HH="cat ~/.mybin/HH.txt"          #Helperfile, piccole spiegazioni veloci di tool usati
alias HHmod="nano ~/.mybin/HH.txt"      #Modifica l'helper 

#FLUXBOX#
alias flux_menu='nano .fluxbox/fluxbox-menu' 
alias flux_start='nano .fluxbox/startup'
alias flux_app='nano .fluxbox/apps'


#SEC TOOL#
alias strip='sudo ~/.mybin/./autostrip.sh'
alias karma='sudo ~/.mybin/./karmaplay.sh'
alias metpay='sudo ~/.mybin/./MetPay.sh'
alias gerix='sudo python ~/.mybin/gerix-wifi-cracker-master/./gerix.py'
alias rawr="sudo python ~/.mybin/rawr/./rawr.py"
alias stf="sudo ~/.mybin/HconSTF/./HconSTF"

#APT#
alias agd='sudo apt-get update'
alias agg='sudo apt-get upgrade'
alias adu='sudo apt-get dist-upgrade'
alias agi='sudo apt-get -y install'
alias agr='sudo apt-get remove'
alias agar='sudo apt-get autoremove'
alias agc='sudo apt-get clean'
alias agac='sudo apt-get autoclean'
alias acs='sudo apt-cache search'
alias repo='sudo nano /etc/apt/sources.list'
alias instdeb='sudo dpkg -i'

#SYSTEM#
#alias tool_upd='sudo backbox-update minimal'	 
alias log_kern='sudo colortail -n 50  /var/log/kern.log'
alias log_sys='sudo colortail -n 50  /var/log/syslog'	 
alias log_auth='sudo colortail -n 50  /var/log/auth.log'
alias multi_log='sudo multitail /var/log/kern.log /var/log/syslog /var/log/auth.log'
alias db='sudo /etc/init.d/postgresql start'
alias -g H=' --help'
alias Rb="sudo reboot"
alias Po="sudo poweroff"
alias New='sudo mount /dev/sda4 /mnt/contenitore'
#---------------------------------------	 
alias rw-='chmod 600'
alias rwx='chmod 700'
alias r--='chmod 644'
alias r-x='chmod 755'
#---------------------------------------
alias gpsea='gpg --search-keys'
alias gplst='gpg --list-keys --with-fingerprint'
alias gpsig='gpg --list-sigs'
#---------------------------------------
alias msf='sudo msfconsole'
alias sniff='sudo ettercap -G &'
alias shark='sudo wireshark &'

#ANONIMATO#
alias vid='vidalia &'
alias anonstart="cd ~/.mybin && sudo ./anonym.sh start"
alias anonstop="cd ~/.mybin && sudo ./anonym.sh stop" 
alias jon="jondofox-start &"

#-------------------------------------#
##################EOF##################
