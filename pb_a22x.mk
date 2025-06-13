#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit from TWRP common configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# SHRP settings
$(call inherit-product-if-exists, device/samsung/a22x/shrp_a22x.mk)

# Inherit from a22x device
$(call inherit-product, device/samsung/a22x/device.mk)

PRODUCT_DEVICE := a22x
PRODUCT_NAME := twrp_a22x
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A226B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung
