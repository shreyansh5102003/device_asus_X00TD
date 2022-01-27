#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common awaken stuff
$(call inherit-product, vendor/awaken/config/common_full_phone.mk)

# Inherit from X00TD device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Gapps & Elixir Stuff
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64


# Device identifier. This must come after all inclusions.
PRODUCT_NAME :=  awaken_X00TD
PRODUCT_DEVICE := X00TD
PRODUCT_BRAND := asus
PRODUCT_MODEL := Zenfone Max Pro M1
PRODUCT_MANUFACTURER := asus

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=ASUS_X00T \
    PRODUCT_NAME=WW_X00T \
    PRIVATE_BUILD_DESC="redfin-user 12 SQ1A.220105.002 7961164 release-keys"

# Build fingerprint
BUILD_FINGERPRINT := "google/redfin/redfin:12/SQ1A.220105.002/7961164:user/release-keys"
