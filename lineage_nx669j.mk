#
# Copyright (C) 2021-2022 The LineageOS Project
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
    BuildDesc="NX669J-user 12 SKQ1.220502.001 eng.nubia.20231027.220153 release-keys" \
    BuildFingerprint=nubia/NX669J/NX669J:12/SKQ1.220502.001/eng.nubia.20231027.220153:user/release-keys \
    DeviceName=NX669J \
    DeviceProduct=NX669J
