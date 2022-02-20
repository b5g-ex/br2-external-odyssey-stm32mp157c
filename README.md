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
# after build, you can find fw image, output/images/odyssey_stm32mp157c.fw

# if you want to configure odyssey_stm32mp157c_defconfig, invoke below command
$ make menuconfig
```

### burn fw to SD

```
$ sudo fwup output/images/odyssey_stm32mp157c.fw
```

## TODO 

- [x] prepare u-boot by br
- [x] prepare dtb by br
- [x] confirm gpio
- [x] confirm i2c


## About WiFi Firmware

- https://forum.seeedstudio.com/t/odyssey-stm32mp157c-wi-fi-firmware/254372
- https://github.com/Seeed-Studio/seeed-linux-deb/blob/master/pool/main/a/ap6xxx-firmware/ap6xxx-firmware_0.0.1-1_armhf.deb

```
# list contents
$ dpkg-dev --contents ap6xxx-firmware_0.0.1-1_armhf.deb
```


## About I2C

confirm i2c with RPI HAT whose address is 0x04,

with Grove aht20 whose address is 0x38

```
# i2cdetect -l
i2c-1   i2c             STM32F7 I2C(0x000000005c002000)         I2C adapter
i2c-0   i2c             STM32F7 I2C(0x0000000040013000)         I2C adapter
# i2cdetect -y 1
     0  1  2  3  4  5  6  7  8  9  a  b  c  d  e  f
00:          -- 04 -- -- -- -- -- -- -- -- -- -- --
10: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
20: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
30: -- -- -- -- -- -- -- -- 38 -- -- -- -- -- -- --
40: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
50: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
60: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
70: -- -- -- -- -- -- -- --
```


## About GPIO

confirm input with RPI HAT, D5 with Grove Button

```
# gpioget gpiochip0 3
0
# gpioget gpiochip0 3
1
```

confirm output with RPI HAT, D16 with Grove Led

```
# gpioset gpiochip4 15=0
# gpioset gpiochip4 15=1
```

