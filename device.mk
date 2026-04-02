#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/samsung/r5q

# Arhitectură și nucleu
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Identificare Produs (Folosim variabile standard pentru a evita duplicatele)
PRODUCT_MODEL := SM-G770F
PRODUCT_DEVICE := r5q
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_NAME := twrp_r5q

# Proprietăți de Sistem (Overrides)
# Aici punem doar ce este strict necesar pentru TWRP
PRODUCT_PROPERTY_OVERRIDES += \
    ro.adb.secure=0 \
    ro.debuggable=1 \
    persist.sys.usb.config=adb \
    ro.secure=0 \
    ro.allow.mock.location=1 \
    ro.build.characteristics=default \
    ro.display.series="Samsung Galaxy S10 Lite"

# Setări specifice Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Partitii și Sistem de fișiere
PRODUCT_PACKAGES += \
    otapreopt_script \
    checkpoint_gc \
    libandroid_net \
    libion

# Limbă și regiune
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Boot Animatie (dacă există)
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml
