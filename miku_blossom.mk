#
# Copyright (C) 2026 Miku UI
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/blossom/device.mk)

# Legacy blossom trees still reference a few optional modules that MikuUI/BP4A
# does not ship; avoid Miku's early product package existence gate for this port.
TARGET_DISABLE_EPPE := true

# Inherit common Miku UI phone configuration.
$(call inherit-product, vendor/miku/build/product/miku_product_phone.mk)

PRODUCT_NAME := miku_blossom
PRODUCT_DEVICE := blossom
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# MikuUI/BP4A tree does not ship these optional Lineage/AOSP modules.
PRODUCT_PACKAGES -= \
    FMRadio \
    webview
