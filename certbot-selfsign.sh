#!/bin/bash


BASEDIR="etc/letsencrypt"

# Again, but for default too
file_key="$BASEDIR/self-signed.pem"
file_crt="$BASEDIR/self-signed.crt"
sudo openssl req -x509 -newkey rsa:4096 -keyout "$file_key" -out "$file_crt" -nodes -subj "/C=US/ST=Oregon/L=Portland/O=Company Name/OU=Org/CN=www.example.com" -sha256 -days 3650

# And the SSL DHParams

openssl dhparam -out "$BASEDIR/ssl-dhparams.pem" 2048


