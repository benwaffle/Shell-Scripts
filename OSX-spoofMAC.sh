if [ -z $1]
then
	echo "Usage: $0 [mac address]"
else
	echo "spoofing to $1"
	sudo airport -z
	sudo ifconfig en1 ether $1 
	echo "please reconnect to wifi"
fi
