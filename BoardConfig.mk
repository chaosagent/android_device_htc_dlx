# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
USE_CAMERA_STUB := true
TARGET_BOARD_PLATFORM := msm8960
TARGET_BOOTLOADER_BOARD_NAME := DLX
TARGET_BOOTLOADER_NAME=dlx
TARGET_BOARD_INFO_FILE := device/htc/dlx/board-info.txt

# inherit from common msm8960
-include device/htc/msm8960-common/BoardConfigCommon.mk

# Added for Clockworkmod
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"

# Bluetooth Configuration
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/htc/dlx/bluetooth



# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := dlx
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true

#Kernel
BOARD_KERNEL_BASE := 0x80600000
BOARD_KERNEL_PAGE_SIZE := 2048
#BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=dlx user_debug=31  
BOARD_FORCE_RAMDISK_ADDRESS := 0x81a08000

TARGET_PREBUILT_KERNEL := device/htc/dlx/prebuilt/kernel
TARGET_KERNEL_CONFIG := dlx_defconfig

# Use libril in the device tree
BOARD_PROVIDES_LIBRIL := true

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# QCOM GPS
#BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
#BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := dlx

# Lights
TARGET_PROVIDES_LIBLIGHTS := true

# USB
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

# Wifi
WIFI_DRIVER_MODULE_NAME          := prima_wlan
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/prima_wlan.ko"

# cat /proc/emmc
#dev:        size     erasesize name
#mmcblk0p23: 000ffa00 00000200 "misc"
#mmcblk0p22: 00fffe00 00000200 "recovery"
#mmcblk0p21: 01000000 00000200 "boot"
#mmcblk0p33: 67fffc00 00000200 "system"
#mmcblk0p30: 00140200 00000200 "local"
#mmcblk0p34: 0ffffe00 00000200 "cache"
#mmcblk0p35: 97fffe00 00000200 "userdata"
#mmcblk0p26: 01400000 00000200 "devlog"
#mmcblk0p28: 00040000 00000200 "pdata"
#mmcblk0p36: 27be00000 00000200 "fat"
#mmcblk0p31: 00010000 00000200 "extra"
#mmcblk0p17: 02d00000 00000200 "radio"
#mmcblk0p18: 00a00000 00000200 "adsp"
#mmcblk0p16: 00100000 00000200 "dsps"
#mmcblk0p19: 00500000 00000200 "wcnss"
#mmcblk0p20: 007ffa00 00000200 "radio_config"
#mmcblk0p24: 00400000 00000200 "modem_st1"
#mmcblk0p25: 00400000 00000200 "modem_st2"

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
#BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776704
#BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1744829440
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 2550136320
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1946156032
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12482248704
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_VOLD_MAX_PARTITIONS := 36

#TWRP
DEVICE_RESOLUTION := 800x1280
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
TW_FLASH_FROM_STORAGE := true

# Video Configuration

BOARD_EGL_CFG := device/htc/dlx/egl.cfg
USE_OPENGL_RENDERER := true
TARGET_USES_ION := true
TARGET_USES_OVERLAY := true
TARGET_USES_SF_BYPASS := true
TARGET_USES_C2D_COMPOSITON := true

BOARD_USES_SECURE_SERVICES := true

BOARD_USES_EXTRA_THERMAL_SENSOR := true
BOARD_USES_CAMERA_FAST_AUTOFOCUS := true

BOARD_LIB_DUMPSTATE := libdumpstate.dlx

BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)
TARGET_NO_RPC := true

TARGET_RELEASETOOLS_EXTENSIONS := device/htc/dlx
