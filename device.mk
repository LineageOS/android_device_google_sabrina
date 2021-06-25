#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/google/sabrina

$(call inherit-product, vendor/google/sabrina/sabrina-vendor.mk)

$(call inherit-product, device/amlogic/g12-common/g12.mk)

## Kernel Modules
PRODUCT_PACKAGES += \
    dhd
