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

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=sabrina \
    PRIVATE_BUILD_DESC="sabrina_prod_stable-user 10 QTS1.210311.008 7350836 release-keys"

BUILD_FINGERPRINT := google/sabrina_prod_stable/sabrina:10/QTS1.210311.008/7350836:user/release-keys
