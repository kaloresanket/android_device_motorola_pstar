#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from pstar device
$(call inherit-product, device/motorola/pstar/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_pstar
PRODUCT_DEVICE := pstar
PRODUCT_BRAND := motorola
PRODUCT_MODEL := Edge 20 Pro
PRODUCT_MANUFACTURER := motorola

PRODUCT_SYSTEM_NAME := pstar_retail

# Build info
BUILD_FINGERPRINT := "motorola/pstar_retail/pstar:13/T1RAS33.55-15-16-5/d9def9-6b8134:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="pstar_retail-user 13 T1RAS33.55-15-16-5 d9def9-6b8134 release-keys" \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

#Extra Flags
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_ENABLE_BLUR := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USE_GOOGLE_TELEPHONY := true
