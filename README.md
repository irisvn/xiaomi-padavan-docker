# xiaomi-padavan-docker
Docker-compose for build Xiaomi Padavan Firmware

### Big Thanks ####
* https://github.com/yuos-bit/Padavan
* Group Support: https://t.me/MiRouter4c

### Build firmware ###
* Run Docker-compose
```bash
docker-compose up --build
```
* Access to container
```bash
docker exec -it padavan_build /bin/bash
```
* (Optinal) Edit config file:
```bash
vim /opt/rt-n56u/trunk/configs/templates/MI-4C.config
```
* Run command:
```bash
cd /opt/rt-n56u/trunk
sudo ./clear_tree
fakeroot ./build_firmware_modify MI-4C
```
