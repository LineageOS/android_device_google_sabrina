#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

function blob_fixup() {
    case "${1}" in
        # Use generic Light HAL context for led_control_service
        vendor/etc/init/led_control_service.rc)
            sed -i "s|u:r:led_control_service:s0|u:object_r:hal_light_default_exec:s0|g" "${2}"
            ;;
    esac
}

# If we're being sourced by the common script that we called,
# stop right here. No need to go down the rabbit hole.
if [ "${BASH_SOURCE[0]}" != "${0}" ]; then
    return
fi

set -e

export DEVICE=sabrina
export DEVICE_COMMON=g12-common
export TARGET_SOC=sm1
export VENDOR=google
export VENDOR_COMMON=amlogic

"./../../${VENDOR_COMMON}/${DEVICE_COMMON}/extract-files.sh" "$@"
