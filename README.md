# pi-digiradio

A complete build of Digiradio-V and all other necessary software to get running
 on a Raspberry PI (or other SBC) debian system. 

## Setup
Ensure the following packages are installed prior to building:

```
sudo apt install docker.io docker-compose git openssl
```

Then checkout, build and run!
```
git clone https://github.com/x0r9/pi-digiradio.git
cd pi-digiradio
git submodule update --init --recursive
sudo docker-compose build
./certbot-selfsign.sh
sudo docker-compose up
```

### BODGES
These are bodges that need better fixes

Issue with redis not able to write to log?
```
redis          | *** FATAL CONFIG FILE ERROR (Redis 6.2.6) ***
redis          | Reading the configuration file, at line 302
redis          | >>> 'logfile /var/redis/redis.log'
redis          | Can't open the log file: Permission denied 
```
Then:
```
chmod 777 var/redis
```

If no `arecord` installed run:
```
sudo apt install alsa-utils
```

## Direwolf

To run Direwolf natively:

```
sudo apt install direwolf
```

Set up the sound card in `etc\direwolf\direwolf.conf` under `ADEVICE`

## SystemD

### DireWolf

