/ip firewall nat
add action=dst-nat chain=DNAT dst-port=2222 protocol=tcp src-address=\
    X.X.X.X to-addresses=\
    192.168.1.200 to-ports=22 comment="SSH with Source Add"
add action=dst-nat chain=DNAT dst-port=8888 protocol=tcp to-addresses=\
    192.168.1.200 to-ports=80 comment=HTTP
add action=dst-nat chain=DNAT dst-port=8443 protocol=tcp to-addresses=\
    192.168.1.200 to-ports=443 comment=HTTPS
add action=dst-nat chain=DNAT dst-port=2121 protocol=tcp to-addresses=\
    192.168.1.200 to-ports=21 comment=FTP