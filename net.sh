tunctl -b -u mohammad
ifconfig tap0 up 
brctl addbr br0 
brctl addif br0 eth0
brctl addif br0 tap0 
ifconfig br0 up
dhclient br0
