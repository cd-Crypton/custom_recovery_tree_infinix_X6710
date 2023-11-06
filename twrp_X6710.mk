#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from X6710 device
$(call inherit-product, device/infinix/X6710/device.mk)

PRODUCT_DEVICE := X6710
PRODUCT_NAME := twrp_X6710
PRODUCT_BRAND := infinix
PRODUCT_MODEL := Infinix Note 30 VIP
PRODUCT_MANUFACTURER := infinix
PRODUCT_PLATFORM := mt6893

PRODUCT_GMS_CLIENTID_BASE := android-infinix

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="infinix-x6710-user 12 SP1A.210812.016 421093 release-keys"

BUILD_FINGERPRINT := infinix/infinix-X6710-GL/infinix-X6710:12/SP1A.210812.016/230904V1822:user/release-keys
