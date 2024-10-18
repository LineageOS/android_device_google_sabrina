#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Not set in time to check, so set before everything else
PRODUCT_IS_ATV := true

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

PRODUCT_ATV_CLIENTID_BASE := ATV00100020-US

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="sabrina_prod_stable-user 12 STTE.240615.007 12033466 release-keys" \
    BuildFingerprint=google/sabrina_prod_stable/sabrina:12/STTE.240615.007/12033466:user/release-keys \
    DeviceName=sabrina_prod_stable \
    DeviceProduct=sabrina_prod_stable \
    SystemDevice=sabrina \
    SystemName=sabrina
