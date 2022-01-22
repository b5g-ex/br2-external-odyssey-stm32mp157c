#!/bin/ash

KERNEL_VER=$(uname -r)

# rmmod

## wifi
rmmod "/lib/modules/$KERNEL_VER/kernel/drivers/net/wireless/broadcom/brcm80211/brcmfmac/brcmfmac.ko"
rmmod "/lib/modules/$KERNEL_VER/kernel/drivers/net/wireless/broadcom/brcm80211/brcmutil/brcmutil.ko"
rmmod "/lib/modules/$KERNEL_VER/kernel/net/wireless/cfg80211.ko"

## bluetooth
rmmod "/lib/modules/$KERNEL_VER/kernel/drivers/bluetooth/hci_uart.ko"
rmmod "/lib/modules/$KERNEL_VER/kernel/drivers/bluetooth/btbcm.ko"
rmmod "/lib/modules/$KERNEL_VER/kernel/net/bluetooth/bluetooth.ko"

## rfkill
rmmod "/lib/modules/$KERNEL_VER/kernel/net/rfkill/rfkill.ko"


# insmod

## rfkill
insmod "/lib/modules/$KERNEL_VER/kernel/net/rfkill/rfkill.ko"

## wifi
insmod "/lib/modules/$KERNEL_VER/kernel/net/wireless/cfg80211.ko"
insmod "/lib/modules/$KERNEL_VER/kernel/drivers/net/wireless/broadcom/brcm80211/brcmutil/brcmutil.ko"
insmod "/lib/modules/$KERNEL_VER/kernel/drivers/net/wireless/broadcom/brcm80211/brcmfmac/brcmfmac.ko"

## bluetooth
insmod "/lib/modules/$KERNEL_VER/kernel/net/bluetooth/bluetooth.ko"
insmod "/lib/modules/$KERNEL_VER/kernel/drivers/bluetooth/btbcm.ko"
insmod "/lib/modules/$KERNEL_VER/kernel/drivers/bluetooth/hci_uart.ko"
