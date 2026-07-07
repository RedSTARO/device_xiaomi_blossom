#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/lineage_blossom.mk \
    $(LOCAL_DIR)/miku_blossom.mk

COMMON_LUNCH_CHOICES := \
    miku_blossom-user \
    miku_blossom-userdebug \
    miku_blossom-eng \
    lineage_blossom-user \
    lineage_blossom-userdebug \
    lineage_blossom-eng
