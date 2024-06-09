#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

export DEVICE=sabrina
export DEVICE_COMMON=g12-common
export TARGET_SOC=sm1
export VENDOR=google
export VENDOR_COMMON=amlogic

"./../../${VENDOR_COMMON}/${DEVICE_COMMON}/setup-makefiles.sh" "$@"
