#
# Copyright (C) 2021-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

## Bluetooth
PRODUCT_PACKAGES += \
    SabrinaBluetoothOverlay \
    libbt-vendor

$(call soong_config_set,brcm_libbt,bdroid_buildcfg_include_dir,$(LOCAL_PATH)/bluetooth/include)
$(call soong_config_set,brcm_libbt,custom_bt_config,//device/google/sabrina:vnd_sabrina.txt)

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

## Platform
TARGET_AMLOGIC_SOC := sm1

## Soong Namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH) \
    hardware/broadcom/libbt

## Wi-Fi firmware
include kernel/amlogic/kernel-modules/dhd-driver/firmware/wifi/wifi.mk

## Inherit from the common tree product makefile
$(call inherit-product, device/amlogic/g12-common/g12.mk)

## Inherit from the proprietary files makefile
$(call inherit-product, vendor/google/sabrina/sabrina-vendor.mk)
