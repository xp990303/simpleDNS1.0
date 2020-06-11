#!/bin/bash
gcc -g -std=c99 packet.c client.c -o client
gcc -g -std=c99 packet.c server_2nd.c -o server_2nd
gcc -g -std=c99 packet.c dns_secondb.c -o dns_secondb
gcc -g -std=c99 packet.c server_local.c -o server_local
gcc -g -std=c99 packet.c server_root.c -o server_root
gcc -g -std=c99 packet.c server_tld.c -o server_tld

pidof server_2nd | xargs sudo kill -9
pidof dns_secondb | xargs sudo kill -9
pidof server_local | xargs sudo kill -9
pidof server_root | xargs sudo kill -9
pidof server_tld | xargs sudo kill -9

sudo ./server_2nd &
sudo ./server_local &
sudo ./server_root &
sudo ./server_tld &
sudo ./dns_secondb &