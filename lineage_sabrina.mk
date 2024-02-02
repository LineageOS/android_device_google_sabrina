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

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=sabrina_prod_stable \
<<<<<<< HEAD   (b43140 sabrina: Make device name/product prop overrides work)
    PRIVATE_BUILD_DESC="sabrina_prod_stable-user 10 QTS1.210311.036 7814738 release-keys" \
    TARGET_DEVICE=$(PRODUCT_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)
=======
    PRIVATE_BUILD_DESC="sabrina_prod_stable-user 12 STTL.231114.004 11218674 release-keys"
>>>>>>> CHANGE (a2812a sabrina: sabrina_prod_stable-user 12 STTL.231114.004 1121867)

BUILD_FINGERPRINT := google/sabrina_prod_stable/sabrina:12/STTL.231114.004/11218674:user/release-keys
