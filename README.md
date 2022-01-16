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

- [ ] prepare u-boot by br
- [x] prepare dtb by br
