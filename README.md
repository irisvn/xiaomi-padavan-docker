# xiaomi-padavan-docker
Docker-compose for build Xiaomi Padavan Firmware

### Build firmware ###
* Run Docker-compose
* Access to container
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
