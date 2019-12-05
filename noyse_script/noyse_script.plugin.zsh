#versione:      2.0.3.1
#data.Agg:      28/10/19

## FUNZIONI ##

## Cazzata... Pensaci un attimo...
function aspe() {
	#Pensaci un attimo#
	echo "Pensaci un attimo:"
	echo "Hai 10 secondi per decidere..."
	for i in {0..9}; do echo -ne "."; sleep 1; done
}


## Altra cazzata, ma utili info!
function ripigliami() {
Distro=`cat /etc/lsb-release  |grep DISTRIB_ID= | cut -f 2 -d "="`

	#Quando sei perso, e non sai che fare
	#questa funzione fa a caso tuo!!
	echo "Sei qui: $PWD"
	echo "Sei tu: `whoami`"
	echo "$Distro"
	echo "Con questo UID: $UID"
	echo "Alle: `date '+%X' `"
	echo "Up: `uptime`"
	echo "Non ti sei ancora ripigliato?"
}


#-------------------------------------#

###################EOF#################
