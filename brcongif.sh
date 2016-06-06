tunctl -b -u mohammad
brctl addbr br0
ifconfig tap0 up 
ip addr flush dev eth0
ip addr flush dev tap0
brctl addif br0 tap0
brctl addif br0 eth0
ip route add default via 192.168.12.1
ifconfig br0 up  
dhclient br0
