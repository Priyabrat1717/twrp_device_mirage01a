#
# Copyright (C) 2017 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/LYF/mirage01a

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# Platform
TARGET_BOARD_PLATFORM := msm8916
TARGET_BOARD_PLATFORM_VARIANT := msm8939
TARGET_BOARD_PLATFORM_GPU := qcom-adreno405
TARGET_BOARD_SUFFIX := _64

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8916
TARGET_NO_BOOTLOADER := true

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 earlyprintk androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_KERNEL_PREBUILT_DT := true
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --dt $(LOCAL_PATH)/recovery/dt.img
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/recovery/kernel

# Encryption
TARGET_HW_DISK_ENCRYPTION := true

# Keymaster
TARGET_PROVIDES_KEYMASTER := true

# Init
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/

# Filesystem
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE      := 0x002000000
BOARD_CACHEIMAGE_PARTITION_SIZE     := 0x018000000
BOARD_PERSISTIMAGE_PARTITION_SIZE   := 0x002000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE  := 0x002000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE    := 0x068000000
BOARD_USERDATAIMAGE_PARTITION_SIZE  := 0x307dfbc00

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Qualcomm support
BOARD_USES_QCOM_HARDWARE := true

# TWRP Configuration
TW_SCREEN_BLANK_ON_BOOT := true
TW_INCLUDE_FUSE_EXFAT := true
TW_INCLUDE_NTFS_3G := true
TW_EXTRA_LANGUAGES := true
TW_THEME := portrait_hdpi
TW_INCLUDE_CRYPTO := true
TW_MAX_BRIGHTNESS := 255
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_SCREEN_BLANK_ON_BOOT := true
TW_HAS_EDL_MODE := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/root/etc/twrp.fstab
BOARD_SUPPRESS_SECURE_ERASE := true
RECOVERY_SDCARD_ON_DATA := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true

# Disable Mouse Cursor
TW_INPUT_BLACKLIST := "hbtp_vm"

# exFAT FS Support
TW_INCLUDE_FUSE_EXFAT := true

# NTFS Support
TW_INCLUDE_FUSE_NTFS := true

# Add MTP support
TW_INCLUDE_MTP := true
