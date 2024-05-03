#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common AOSP stuff
$(call inherit-product, device/google/atv/products/atv_base.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_tv.mk)

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_DEVICE := sabrina
PRODUCT_GMS_CLIENTID_BASE := android-google-tv
PRODUCT_MANUFACTURER := Google
PRODUCT_MODEL := Chromecast
PRODUCT_NAME := lineage_sabrina

PRODUCT_SYSTEM_NAME := sabrina_prod_stable
PRODUCT_SYSTEM_DEVICE := sabrina_prod_stable

PRODUCT_ATV_CLIENTID_BASE := ATV00100020-US

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=sabrina_prod_stable \
    PRIVATE_BUILD_DESC="sabrina_prod_stable-user 10 QTS1.210311.036 7814738 release-keys" \
    TARGET_DEVICE=$(PRODUCT_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := google/sabrina_prod_stable/sabrina:10/QTS1.210311.036/7814738:user/release-keys
