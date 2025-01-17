#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from hotdog device
$(call inherit-product, device/oneplus/hotdog/device.mk)

# Inherit some common Pixelage stuff.
$(call inherit-product, vendor/pixelage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := pixelage_hotdog
PRODUCT_DEVICE := hotdog
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := HD1917
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi
PRODUCT_CHARACTERISTICS := nosdcard

# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440
TARGET_BOOT_ANIMATION_RES := 1440

# Recorder
TARGET_SUPPORTS_GOOGLE_RECORDER := true

# arcore
TARGET_INCLUDE_STOCK_ARCORE := true

# AICore
TARGET_INCLUDE_STOCK_AICORE := false

# Live Wallpapers
TARGET_INCLUDE_LIVE_WALLPAPERS := true

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_64_BIT_APPS := true

# Build info
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="OnePlus7TPro-user 11 RKQ1.201022.002 2202120146 release-keys" \
    BuildFingerprint="OnePlus/OnePlus7TPro/OnePlus7TPro:11/RKQ1.201022.002/2202120146:user/release-keys" \
    DeviceName=OnePlus7TPro \
    DeviceProduct=OnePlus7TPro \
    SystemDevice=OnePlus7TPro \
    SystemName=OnePlus7TPro

PRODUCT_GMS_CLIENTID_BASE := android-oneplus
