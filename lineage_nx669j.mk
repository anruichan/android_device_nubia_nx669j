#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from the device configuration.
$(call inherit-product, device/nubia/nx669j/device.mk)

# Inherit from the Lineage configuration.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := nubia
PRODUCT_DEVICE := nx669j
PRODUCT_MANUFACTURER := nubia
PRODUCT_MODEL := NX669J
PRODUCT_NAME := lineage_nx669j

PRODUCT_GMS_CLIENTID_BASE := android-zte

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=NX669J \
    PRODUCT_NAME=NX669J \
    PRIVATE_BUILD_DESC="NX669J-user 11 RKQ1.210614.002 nubia.20210806.230006 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "nubia/NX669J/NX669J:11/RKQ1.210614.002/nubia.20210806.230006:user/release-keys"
