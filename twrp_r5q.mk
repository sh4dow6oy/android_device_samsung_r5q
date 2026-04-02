#
# Copyright 2021 The Android Open Source Project
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

# Inherit from r5q device (Configurarea de bază a device-ului)
$(call inherit-product, device/samsung/r5q/device.mk)

# Inherit from our custom product configuration (Configurarea TWRP)
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from AOSP base (Asigură-te că aceasta este ultima includere de bază)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

## Device identifier.
# Trebuie să folosim valori identice peste tot pentru a evita "duplicate sysprop"
PRODUCT_DEVICE := r5q
PRODUCT_NAME := twrp_r5q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G770F
PRODUCT_MANUFACTURER := samsung

# Setări specifice de Build pentru a forța versiunea corectă
PRODUCT_PLATFORM_RELEASE := 12
PLATFORM_VERSION := 12
PLATFORM_SDK_VERSION := 32

# Fingerprint oficial (opțional, dar ajută la consistență)
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=twrp_r5q \
    PRODUCT_DEVICE=r5q \
    TARGET_DEVICE=r5q
