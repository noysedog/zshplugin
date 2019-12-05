#versione:      2.1.8.17
#data.Agg:      5/12/2019

#--VARIE---------------------------------------#
#alias -s {png,jpg,JPG,jpeg}=feh
#alias -s {txt,sh,php,py,pl,rb}=subl
alias -s {ogg,ogv,flac,mpg,mpeg,avi,ogm,wmv,m4v,mp4,mov}=vlc
alias -s {pdf}=mupdf
#---------------------------------------------#


#--SISTEMA------------------------------------#
alias ora="date '+%X'"
alias giorno="date '+%D'"
alias GO="giorno && ora"
alias crypt='sudo veracrypt'	#Run veracrypt
alias estraigz='tar -zxvf'	#estract tar.gz
alias estraibz='tar -jxvf'	#estract tar.bz2
alias pressa='tar -cf'		#build tar
alias instdeb='sudo dpkg -i'
alias scroto='scrot -c -d 5'
alias cl='clear'		#clear console
alias RM='rm -rf'
alias l+='ls -h */**'
alias ls='ls -h --color=auto'
alias ext='exit'
alias killer='cd ~/.mybin/ && ./fast.kill.sh'
alias upd_noyse='~/.mybin/./upd.sh'
alias wipe='wipe -r -P 5'
alias db='sudo /etc/init.d/postgresql start'
alias Rb="sudo reboot"
alias Po="sudo poweroff"
alias Ps="ps -fax"
alias pso="ps -ano"
alias duf='du -s *(/N) | sort -nr | cut -f 2- | while read a; do du -sh "$a"; done'
alias free='free -m'
#-----------------------------------------#

#--DIRECTORY----------------------------- #
alias cdP='cd ~/Modelli/Project'
alias cdL='cd ~/Modelli/Project/Lavoro'
alias cdW='cd ~/Modelli/Project/GIT/3_List'
alias cdG='cd ~/Modelli/Project/GIT'
alias cdD='cd ~/Documenti'
alias ccv='cd ~/Documenti/Robe_Personal/CV'
#-----------------------------------------#

#--CONFIG NOYSE PLUGIN -------------------#
alias zconoyse.scr='nano ~/Modelli/Project/noyse_script/noyse_script.plugin.zsh' #edit scripting plugin
alias zconoyse.sys='nano ~/Modelli/Project/noyse_sys/noyse_sys.plugin.zsh' #edit system plugin
alias zconoyse.hack='nano ~/Modelli/Project/noyse_hack/noyse_hack.plugin.zsh' #edit hacking plugin
alias zconoyse.net='nano ~/Modelli/Project/noyse_net/noyse_net.plugin.zsh' #edit networking plugin
alias helfo='colortail -n 500 ~/.mybin/helfo.txt'	#print this file plus other config
alias He="helfo"
alias he="helfo"
alias HE="helfo"
alias helmod='nano ~/.mybin/helfo.txt'	#edit my own help file
alias zrcmod='nano ~/.zshrc' #edit zshrc
alias zsource='source ~/.zshrc'		#source zsh config file
alias HH="colortail -n 500 ~/.mybin/HH.txt"          #Helperfile, piccole spiegazioni veloci di tool usati
alias HHmod="nano ~/.mybin/HH.txt"      #Modifica l'helper
#-----------------------------------------#

#--LOG------------------------------------#
alias log_kern='sudo colortail -n 20  /var/log/kern.log'
alias log_sys='sudo colortail -n 20  /var/log/syslog'
alias log_auth='sudo colortail -n 20  /var/log/auth.log'
alias multi_log='sudo multitail /var/log/kern.log /var/log/syslog /var/log/auth.log'
#-----------------------------------------#

#--APT------------------------------------#
alias agd='sudo apt-get update'
alias ad='sudo apt update'
alias agg='sudo apt-get upgrade'
alias ap='sudo apt upgrade'
alias AGgd='sudo apt-get update && sudo apt-get upgrade'
alias AUP='sudo apt update && sudo apt upgrade'
alias adu='sudo apt-get dist-upgrade'
alias agi='sudo apt-get install -y'
alias ai='sudo apt install -y'
alias agikal='sudo apt-get install -t kali-rolling'
alias agr='sudo apt-get purge'
alias agar='sudo apt-get autoremove'
alias agc='sudo apt-get clean'
alias agac='sudo apt-get autoclean'
alias acs='sudo apt-cache search'
alias axis='sudo axi-cache'
alias repo='sudo nano /etc/apt/sources.list'
#-----------------------------------------#


#--PERMESSI----------------------------#
alias rw-='chmod 600'
alias rwx='chmod 700'
alias r--='chmod 644'
alias r-x='chmod 755'
#-----------------------------------------#


#--GPG---------------------------------#
alias gpsea='gpg --search-keys'
alias gplst='gpg --list-keys --with-fingerprint'
alias gpsig='gpg --list-sigs'
#-----------------------------------------#


#--TERMINAL SHORTCUT----------------------#
alias -g N='> /dev/null'
alias -g G='| grep'
alias -g C='| ccze -A'
alias -g line='| wc -l'
alias -g Sn='| sort -n'
alias -g Snr='| sort -nr'
alias -g H=' --help'
#------------------------------------------#


##Ruby
alias pry= "pry --simple-prompt"

##Perl
#alias CPAN



##################EOF##################

