#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8250-common
$(call inherit-product, device/motorola/sm8250-common/common.mk)

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Overlays
PRODUCT_PACKAGES += \
    FrameworksResPstar \
    SystemUIResPstar \
    SettingsProviderResPstar

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    bluetooth.device.default_name=Motorola Edge 20 Pro

# Call recording
PRODUCT_PACKAGES += \
    com.google.android.apps.dialer.call_recording_audio.features.xml

# Camera
PRODUCT_PACKAGES += \
    libgui_shim_vendor

# Dex preopt
PRODUCT_DEXPREOPT_SPEED_APPS += \
    Launcher3QuickStep \
    SettingsGoogle \
    SystemUIGoogle

PRODUCT_USE_PROFILE_FOR_BOOT_IMAGE := true
PRODUCT_DEX_PREOPT_BOOT_IMAGE_PROFILE_LOCATION := frameworks/base/config/boot-image-profile.txt

# HotwordEnrollement app permissions
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/permissions/privapp-permissions-hotword.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-hotword.xml

TARGET_EXCLUDES_AUDIOFX := true

# Init
PRODUCT_PACKAGES += \
    init.device.rc

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_ODM)/etc/media_profiles_V1_0.xml

# NFC
PRODUCT_PACKAGES += \
    android.hardware.nfc@1.2-service.st \
    android.hardware.secure_element@1.2-service.st \
    nfc_nci.st21nfc.default

# Get non-open-source specific aspects
$(call inherit-product, vendor/motorola/pstar/pstar-vendor.mk)
