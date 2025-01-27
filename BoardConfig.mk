#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/nubia/nx669j

include build/make/target/board/BoardConfigMainlineCommon.mk

# A/B
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS := \
    boot \
    dtbo \
    odm \
    product \
    system \
    system_ext \
    vbmeta \
    vbmeta_system \
    vendor \
    vendor_dlkm \
    vendor_boot

# AVB
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3

BOARD_AVB_VBMETA_SYSTEM := product system system_ext
BOARD_AVB_VBMETA_SYSTEM_ALGORITHM := SHA256_RSA4096
BOARD_AVB_VBMETA_SYSTEM_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX_LOCATION := 2

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-2a-dotprod
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := cortex-a76

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a76

# Audio
AUDIO_FEATURE_ENABLED_DLKM := true
AUDIO_FEATURE_ENABLED_EXTENDED_COMPRESS_FORMAT := true
AUDIO_FEATURE_ENABLED_GEF_SUPPORT := true
AUDIO_FEATURE_ENABLED_GKI := true
AUDIO_FEATURE_ENABLED_INSTANCE_ID := true
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := true
AUDIO_FEATURE_ENABLED_SSR := false
AUDIO_FEATURE_ENABLED_SVA_MULTI_STAGE := true
BOARD_SUPPORTS_OPENSOURCE_STHAL := true
BOARD_SUPPORTS_SOUND_TRIGGER := true
BOARD_USES_ALSA_AUDIO := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include
TARGET_USE_QTI_BT_STACK := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := lahaina

# Build
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

# DTB
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_BOOT_HEADER_VERSION := 4
BOARD_MKBOOTIMG_ARGS := --header_version $(BOARD_BOOT_HEADER_VERSION)

# DTBO
BOARD_KERNEL_SEPARATED_DTBO := true

# Display
TARGET_SCREEN_DENSITY := 440

# FSConfig
TARGET_FS_CONFIG_GEN := $(DEVICE_PATH)/config.fs

# HIDL
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE := \
    $(DEVICE_PATH)/hidl/nubia_framework_matrix.xml \
    hardware/qcom-caf/common/vendor_framework_compatibility_matrix.xml \
    vendor/lineage/config/device_framework_matrix.xml \

DEVICE_MANIFEST_FILE := \
    $(DEVICE_PATH)/hidl/nubia_manifest.xml \
    $(DEVICE_PATH)/hidl/manifest.xml

DEVICE_MATRIX_FILE := \
    $(DEVICE_PATH)/hidl/compatibility_matrix.xml

# Kernel
BOARD_KERNEL_CMDLINE := \
    androidboot.console=ttyMSM0 \
    androidboot.hardware=qcom \
    androidboot.memcg=1 \
    androidboot.usbcontroller=a600000.dwc3 \
    androidboot.selinux=permissive \
    cgroup.memory=nokmem,nosocket \
    console=ttyMSM0,115200n8 \
    ip6table_raw.raw_before_defrag=1 \
    iptable_raw.raw_before_defrag=1 \
    loop.max_part=7 \
    lpm_levels.sleep_disabled=1 \
    msm_rtb.filter=0x237 \
    pcie_ports=compat \
    service_locator.enable=1 \
    swiotlb=0

BOARD_VENDOR_KERNEL_MODULES_LOAD := \
    adsp_loader_dlkm.ko \
    apr_dlkm.ko \
    bolero_cdc_dlkm.ko \
    bt_fm_slim.ko \
    btpower.ko \
    camera.ko \
    e4000.ko \
    fc0011.ko \
    fc0012.ko \
    fc0013.ko \
    fc2580.ko \
    hdmi_dlkm.ko \
    hid-aksys.ko \
    it913x.ko \
    llcc_perfmon.ko \
    m88rs6000t.ko \
    machine_dlkm.ko \
    max2165.ko \
    max98937_dlkm.ko \
    mbhc_dlkm.ko \
    mc44s803.ko \
    msi001.ko \
    mt2060.ko \
    mt2063.ko \
    mt20xx.ko \
    mt2131.ko \
    mt2266.ko \
    mxl301rf.ko \
    mxl5005s.ko \
    mxl5007t.ko \
    native_dlkm.ko \
    pinctrl_lpi_dlkm.ko \
    pinctrl_wcd_dlkm.ko \
    platform_dlkm.ko \
    q6_dlkm.ko \
    q6_notifier_dlkm.ko \
    q6_pdr_dlkm.ko \
    qca_cld3_wlan.ko \
    qcom_edac.ko \
    qm1d1b0004.ko \
    qm1d1c0042.ko \
    qt1010.ko \
    r820t.ko \
    radio-i2c-rtc6226-qca.ko \
    rdbg.ko \
    rmnet_core.ko \
    rmnet_ctl.ko \
    rmnet_offload.ko \
    rmnet_shs.ko \
    rx_macro_dlkm.ko \
    si2157.ko \
    slimbus-ngd.ko \
    slimbus.ko \
    snd_event_dlkm.ko \
    stub_dlkm.ko \
    swr_ctrl_dlkm.ko \
    swr_dlkm.ko \
    swr_dmic_dlkm.ko \
    swr_haptics_dlkm.ko \
    tda18212.ko \
    tda18218.ko \
    tda18250.ko \
    tda9887.ko \
    tea5761.ko \
    tea5767.ko \
    tua9001.ko \
    tuner-simple.ko \
    tuner-xc2028.ko \
    tx_macro_dlkm.ko \
    va_macro_dlkm.ko \
    wcd937x_slave_dlkm.ko \
    wcd937x_dlkm.ko \
    wcd938x_dlkm.ko \
    wcd938x_slave_dlkm.ko \
    wcd9xxx_dlkm.ko \
    wcd_core_dlkm.ko \
    wsa883x_dlkm.ko \
    wsa_macro_dlkm.ko \
    xc4000.ko \
    xc5000.ko

TARGET_MODULE_ALIASES += wlan.ko:qca_cld3_wlan.ko

BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_RAMDISK_OFFSET := 0x01000000

BOARD_KERNEL_IMAGE_NAME := Image
BOARD_USES_GENERIC_KERNEL_IMAGE := true
TARGET_KERNEL_CONFIG := vendor/lahaina-qgki_defconfig
TARGET_KERNEL_SOURCE := kernel/nubia/sm8350

# Partitions
BOARD_BUILD_SUPER_IMAGE_BY_DEFAULT := true
BOARD_NUBIA_DYNAMIC_PARTITIONS_PARTITION_LIST := odm product system system_ext vendor vendor_dlkm
BOARD_NUBIA_DYNAMIC_PARTITIONS_SIZE := 8048869376 # BOARD_SUPER_PARTITION_SIZE - 4MB
BOARD_SUPER_PARTITION_GROUPS := nubia_dynamic_partitions
BOARD_SUPER_PARTITION_SIZE := 8053063680

BOARD_BOOTIMAGE_PARTITION_SIZE := 100663296
BOARD_DTBOIMG_PARTITION_SIZE := 25165824
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := $(BOARD_BOOTIMAGE_PARTITION_SIZE)

ifneq ($(WITH_GMS),true)
ifneq ($(PRODUCT_RO_FILE_SYSTEM),erofs)
BOARD_PRODUCTIMAGE_PARTITION_RESERVED_SIZE := 1000000000
BOARD_SYSTEMIMAGE_PARTITION_RESERVED_SIZE := 100000000
BOARD_SYSTEM_EXTIMAGE_PARTITION_RESERVED_SIZE := 100000000
endif
endif

BOARD_ODMIMAGE_FILE_SYSTEM_TYPE := $(PRODUCT_RO_FILE_SYSTEM)
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := $(PRODUCT_RO_FILE_SYSTEM)
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := $(PRODUCT_RO_FILE_SYSTEM)
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := $(PRODUCT_RO_FILE_SYSTEM)
BOARD_VENDOR_DLKMIMAGE_FILE_SYSTEM_TYPE := $(PRODUCT_RO_FILE_SYSTEM)

TARGET_COPY_OUT_ODM := odm
TARGET_COPY_OUT_VENDOR_DLKM := vendor_dlkm

# Platform
BOARD_USES_QCOM_HARDWARE := true
TARGET_BOARD_PLATFORM := lahaina

# Power
TARGET_TAP_TO_WAKE_NODE := /sys/devices/platform/nubia_goodix_ts.0/gesture/enable

# RIL
ENABLE_VENDOR_RIL_SERVICE := true

# Recovery
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_INCLUDE_RECOVERY_RAMDISK_IN_VENDOR_BOOT := true
BOARD_MOVE_RECOVERY_RESOURCES_TO_VENDOR_BOOT := true
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/init/fstab.default
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 100
TARGET_USERIMAGES_USE_F2FS := true

# SELinux
include device/qcom/sepolicy_vndr/SEPolicy.mk

BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor
SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/private

# WLAN
BOARD_WLAN_DEVICE := qcwcn
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_DRIVER := $(BOARD_HOSTAPD_DRIVER)
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := $(BOARD_HOSTAPD_PRIVATE_LIB)
BOARD_WPA_SUPPLICANT_PRIVATE_LIB_EVENT := "ON"
HOSTAPD_VERSION := VER_0_8_X
WIFI_DRIVER_STATE_CTRL_PARAM := "/dev/wlan"
WIFI_DRIVER_STATE_OFF := "OFF"
WIFI_DRIVER_STATE_ON := "ON"
WIFI_HIDL_FEATURE_AWARE := true
WIFI_HIDL_FEATURE_DUAL_INTERFACE := true
WIFI_HIDL_UNIFIED_SUPPLICANT_SERVICE_RC_ENTRY := true
WPA_SUPPLICANT_VERSION := $(HOSTAPD_VERSION)
