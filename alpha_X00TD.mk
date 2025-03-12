#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

ALLOW_MISSING_DEPENDENCIES := true
TARGET_DISABLE_EPPE := true
BUILD_BROKEN_DUP_RULES := true
DISABLE_ARTIFACT_PATH_REQUIREMENTS := true

# Device config
TARGET_HAS_UDFPS := false
TARGET_ENABLE_BLUR := false
TARGET_EXCLUDES_AUDIOFX := false
TARGET_FACE_UNLOCK_SUPPORTED := true

# Build config
# TARGET_BUILD_PACKAGE options:
# 1 - vanilla (default)
# 2 - microg
# 3 - gapps
TARGET_BUILD_PACKAGE := 1

# Launcher
TARGET_INCLUDE_LAWNCHAIR := false

# (valid only for GAPPS builds)
TARGET_INCLUDE_PIXEL_LAUNCHER := false
TARGET_SUPPORTS_QUICK_TAP := false
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_SUPPORTS_GOOGLE_RECORDER := true

# Debugging
TARGET_INCLUDE_MATLOG := false
WITH_ADB_INSECURE := false

# Extras
TARGET_INCLUDE_RIMUSIC := true

# Maintainer
ALPHA_BUILD_TYPE := Unofficial
ALPHA_MAINTAINER := Hansss!!!

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common LineageOS stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from X00TD device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common crDroid stuff
TARGET_SUPPORTS_QUICK_TAP  := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_INCLUDE_PIXEL_CHARGER := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := alpha_X00TD
PRODUCT_DEVICE := X00TD
PRODUCT_BRAND := asus
PRODUCT_MODEL := Zenfone Max Pro M1
PRODUCT_MANUFACTURER := asus

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceProduct=ASUS_X00TD
