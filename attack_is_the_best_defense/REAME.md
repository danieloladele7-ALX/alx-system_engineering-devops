# attack_is_the_best_defense

You can use `tcpdump` to sniff: `tcpdump -i <interface> -A 'tcp port <port>' | grep -i password` e.g `tcpdump -i telnet -A 'tcp port 587' | grep -i password`