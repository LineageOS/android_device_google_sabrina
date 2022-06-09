#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, vendor/google/sabrina/sabrina-vendor.mk)

## Bluetooth
PRODUCT_PACKAGES += \
    libbt-vendor

## Init-Files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init-files/tee_hdcp.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/tee_hdcp.rc \
    $(LOCAL_PATH)/init-files/tee_key_inject.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/tee_key_inject.rc \
    $(LOCAL_PATH)/init-files/init.amlogic.sku.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.amlogic.sku.rc \
    $(LOCAL_PATH)/init-files/init.amlogic.wifi_buildin.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.amlogic.wifi_buildin.rc

## Kernel Modules
PRODUCT_PACKAGES += \
    dhd

## Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

## Wi-Fi
TARGET_DHD_VERSION := bcmdhd.100.10.545.x

## Wi-Fi Firmware
include hardware/amlogic/kernel-modules/dhd-driver/firmware/firmware.mk

## Inherit from the common tree product makefile
$(call inherit-product, device/amlogic/g12-common/g12.mk)
