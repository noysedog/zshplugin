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

#VARIE#
alias -s {png,jpg,JPG,jpeg}=feh
#alias -s {txt,sh,php,py,pl,rb}=gedit
alias -s {ogg,flac,mpg,mpeg,avi,ogm,wmv,m4v,mp4,mov}=vlc
alias -s {pdf}=mupdf
#-------------------------------------------
alias ora="date '+%X'"
alias giorno="date '+%D'"
alias g_o="giorno && ora"
alias crypt='sudo truecrypt'	#Run truecrypt
alias estraigz='tar -zxvf'	#estract tar.gz
alias estraibz='tar -jxvf'	#estract tar.bz2
alias pressa='tar -cf'		#build tar
alias scroto='scrot -c -d 5'
alias cl='clear'		#clear console
alias RM='rm -rf'
alias l+='ls */**'
alias ls='ls --color=auto'
alias ext='exit'
#-------------------------------------------
alias helfo='cat ~/.mybin/helfo.txt'	#print this file plus other config
alias He="helfo"
alias he="helfo"
alias HE="helfo"
alias helmod='nano ~/.mybin/helfo.txt'	#edit my own help file
alias zconoyse.sys='nano ~/.oh-my-zsh/plugins/noyse_sys/noyse_sys.plugin.zsh' #edit system plugin
alias zconoyse.hack='nano ~/.oh-my-zsh/plugins/noyse_hack/noyse_hack.plugin.zsh' #edit hacking plugin
alias zconoyse.net='nano ~/.oh-my-zsh/plugins/noyse_net/noyse_net.plugin.zsh' #edit networking plugin
alias zconoyse.scr='nano ~/.oh-my-zsh/plugins/noyse_script/noyse_script.plugin.zsh' #edit scripting plugin
alias zrcmod='nano ~/.zshrc' #edit zshrc
alias zsource='source ~/.zshrc' 	#source zsh config file
alias HH="cat ~/.mybin/HH.txt"          #Helperfile, piccole spiegazioni veloci di tool usati
alias HHmod="nano ~/.mybin/HH.txt"      #Modifica l'helper 
#-------------------------------------------
#FLUXBOX#
alias flux_menu='nano .fluxbox/fluxbox-menu' 
alias flux_start='nano .fluxbox/startup'
alias flux_app='nano .fluxbox/apps'
#-------------------------------------------
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
#-------------------------------------------
#SYSTEM#
#alias tool_upd='sudo backbox-update minimal'	 
alias log_kern='sudo colortail -n 50  /var/log/kern.log'
alias log_sys='sudo colortail -n 50  /var/log/syslog'	 
alias log_auth='sudo colortail -n 50  /var/log/auth.log'
alias multi_log='sudo multitail /var/log/kern.log /var/log/syslog /var/log/auth.log'
alias forum='firefox http://forum.backbox.org/ &'  
alias db='sudo /etc/init.d/postgresql start'
alias Rb="sudo reboot"
alias Po="sudo poweroff"
alias Ps="ps -fax"
alias New='sudo mount /dev/sda4 /mnt/contenitore'
alias Otro='sudo mount /dev/sda3 /mnt/otro'
alias duf='du -s *(/N) | sort -nr | cut -f 2- | while read a; do du -sh "$a"; done'
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

##################EOF##################

