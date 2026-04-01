# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# --- OrangeFox Theme & UI Fix ---
# Acestea trebuie să fie SUS pentru a fi citite corect de scriptul de build
TW_THEME := portrait_hdpi
DEVICE_SCREEN_WIDTH := 1080
DEVICE_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 2400

# --- Boot Control Fix (Rezolvă blocarea în Recovery) ---
AB_OTA_UPDATER := false
BOARD_USES_RECOVERY_AS_BOOT := false
TARGET_NO_RECOVERY := false

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from r5q device
$(call inherit-product, device/samsung/r5q/device.mk)

PRODUCT_DEVICE := r5q
PRODUCT_NAME := omni_r5q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G770F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Actualizat pentru a reflecta un build de S10 Lite mai nou (opțional, dar ajută)
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="r5qxx-user 13 TP1A.220624.014 G770FXXU9HWB4 release-keys"

BUILD_FINGERPRINT := samsung/r5qxx/r5q:13/TP1A.220624.014/G770FXXU9HWB4:user/release-keys
