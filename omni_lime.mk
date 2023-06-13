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
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from lime device
$(call inherit-product, device/xiaomi/lime/device.mk)

PRODUCT_DEVICE := lime
PRODUCT_NAME := omni_lime
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Lime for arm64
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lime-user 12 RKQ1.211130.001 V14.0.3.0.SJQMIXM release-keys"

BUILD_FINGERPRINT := Redmi/lime/lime:12/RKQ1.211130.001/V14.0.3.0.SJQMIXM:user/release-keys
