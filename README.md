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
sudo docker-compose build
sudo docker-compose run
```


