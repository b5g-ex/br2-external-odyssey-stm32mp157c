# br2-external-odyssey-stm32mp157c

## How to use

### create buildroot linux

```
$ cd your/working/dir
$ git clone https://github.com/buildroot/buildroot.git
$ cd buildroot
$ git checkout 2021.11
$ make BR2_EXTERNAL=path/to/this/dir odyssey_stm32mp157c_defconfig
$ make
```

### burn fw to SD

```
$ sudo fwup output/images/odyssey_stm32mp157c.fw
```

## TODO 

- [x] prepare u-boot by br
- [x] prepare dtb by br


## About WiFi Firmware

- https://forum.seeedstudio.com/t/odyssey-stm32mp157c-wi-fi-firmware/254372
- https://github.com/Seeed-Studio/seeed-linux-deb/blob/master/pool/main/a/ap6xxx-firmware/ap6xxx-firmware_0.0.1-1_armhf.deb

```
# list contents
$ dpkg-dev --contents ap6xxx-firmware_0.0.1-1_armhf.deb
```
