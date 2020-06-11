#!/bin/bash
pidof server_2nd | xargs sudo kill -9
pidof dns_secondb | xargs sudo kill -9
pidof server_local | xargs sudo kill -9
pidof server_root | xargs sudo kill -9
pidof server_tld | xargs sudo kill -9

rm -rf server_2nd 
rm -rf dns_secondb 
rm -rf server_local 
rm -rf server_root 
rm -rf server_tld 
