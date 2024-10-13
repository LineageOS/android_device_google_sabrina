#
# Copyright (C) 2021-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

## Bluetooth
PRODUCT_PACKAGES += \
    SabrinaBluetoothOverlay \
    libbt-vendor

## Bluetooth firmware
include kernel/amlogic/kernel-modules/dhd-driver/firmware/bluetooth/bluetooth.mk

## Init-Files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init-files/init.amlogic.sku.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.amlogic.sku.rc \
    $(LOCAL_PATH)/init-files/init.amlogic.wifi_buildin.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.amlogic.wifi_buildin.rc \
    $(LOCAL_PATH)/init-files/init.amlogic.target.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.amlogic.target.rc \
    $(LOCAL_PATH)/init-files/init.recovery.sabrina.rc:recovery/root/init.recovery.sabrina.rc

## Keylayout (IR)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/Vendor_0001_Product_0001.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/Vendor_0001_Product_0001.kl

## Netflix
PRODUCT_PACKAGES += \
    NetflixConfig \
    SabrinaNetflixConfigOverlay

## Wi-Fi firmware
include kernel/amlogic/kernel-modules/dhd-driver/firmware/wifi/wifi.mk

## Inherit from the common tree product makefile
$(call inherit-product, device/amlogic/sm1-common/sm1.mk)

## Inherit from the proprietary files makefile
$(call inherit-product, vendor/google/sabrina/sabrina-vendor.mk)
