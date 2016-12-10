#
# Copyright (C) 2016 The CyanogenMod Project
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

# Inherit common LineageOS stuff
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Kernel device configurations
TARGET_KERNEL_CONFIG := aosp_tone_dora_defconfig

# Inherit device configurations
$(call inherit-product, device/sony/dora/device.mk)

# Inherit target configurations
$(call inherit-product, frameworks/native/build/phone-xxhdpi-3072-dalvik-heap.mk)
$(call inherit-product, frameworks/native/build/phone-xxhdpi-3072-hwui-memory.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Device display
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Fingerprint from Stock
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=F8131
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=Sony/dora/dora:6.0.1/TONE-1.0.0-160810-1817/1:user/dev-keys
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="dora-user 6.0.1 TONE-1.0.0-160810-1817 1 dev-keys"

# Device identifications
PRODUCT_DEVICE := dora
PRODUCT_NAME := lineage_dora
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony
PRODUCT_MODEL := Xperia X Performance
