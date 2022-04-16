#
# Copyright (C) 2017 The LineageOS Project
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

### INHERIT FROM YOSHINO-COMMON
include device/sony/yoshino-common/BoardConfigPlatform.mk
include vendor/sony/poplar_kddi/BoardConfigVendor.mk

DEVICE_PATH := device/sony/poplar_kddi

PRODUCT_PLATFORM := yoshino

### BOOTLOADER
TARGET_BOOTLOADER_BOARD_NAME := G8341

### KERNEL
TARGET_KERNEL_CONFIG := lineage-msm8998-yoshino-poplar_kddi_defconfig

BOARD_KERNEL_CMDLINE += androidboot.hardware=poplar_kddi

### PARTITIONS
# See also /proc/partitions on the device
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 5242880000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 55743832064
BOARD_VENDORIMAGE_PARTITION_SIZE := 1610612736

### DISPLAY
TARGET_SCREEN_DENSITY := 430

### SEPOLICY
BOARD_VENDOR_SEPOLICY_DIRS += device/sony/poplar_kddi/sepolicy/vendor

### PROPS
# Add device-specific ones
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop
