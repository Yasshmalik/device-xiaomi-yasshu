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

# Inherit from common msm8953-common
-include device/xiaomi/msm8953-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/oxygen

#Extended Filesystem Support
TARGET_EXFAT_DRIVER := sdfat

# Kernel
TARGET_KERNEL_CONFIG := aosp_oxygen_defconfig

# Lineage Hardware
BOARD_HARDWARE_CLASS += \
   $(DEVICE_PATH)/lineagehw

# Partitions
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_USERDATAIMAGE_PARTITION_SIZE := 25765043200 # 25765059584 - 16384
BOARD_VENDORIMAGE_PARTITION_SIZE := 872415232

# Power
TARGET_TAP_TO_WAKE_NODE := "/proc/touchpanel/enable_dt2w"

# Enable real time lockscreen charging current values
BOARD_GLOBAL_CFLAGS += -DBATTERY_REAL_INFO

# Properties
TARGET_SYSTEM_PROP := $(DEVICE_PATH)/system.prop

# Treble
PRODUCT_FULL_TREBLE_OVERRIDE := false
PRODUCT_COMPATIBILITY_MATRIX_LEVEL_OVERRIDE := 27

# Inherit from the proprietary version
-include vendor/xiaomi/oxygen/BoardConfigVendor.mk
