#!/bin/ash

KERNEL_VER=$(uname -r)

rmmod "/lib/modules/$KERNEL_VER/kernel/drivers/net/wireless/broadcom/brcm80211/brcmfmac/brcmfmac.ko"
rmmod "/lib/modules/$KERNEL_VER/kernel/drivers/net/wireless/broadcom/brcm80211/brcmutil/brcmutil.ko"
rmmod "/lib/modules/$KERNEL_VER/kernel/net/wireless/cfg80211.ko"
rmmod "/lib/modules/$KERNEL_VER/kernel/net/rfkill/rfkill.ko"

insmod "/lib/modules/$KERNEL_VER/kernel/net/rfkill/rfkill.ko"
insmod "/lib/modules/$KERNEL_VER/kernel/net/wireless/cfg80211.ko"
insmod "/lib/modules/$KERNEL_VER/kernel/drivers/net/wireless/broadcom/brcm80211/brcmutil/brcmutil.ko"
insmod "/lib/modules/$KERNEL_VER/kernel/drivers/net/wireless/broadcom/brcm80211/brcmfmac/brcmfmac.ko"
