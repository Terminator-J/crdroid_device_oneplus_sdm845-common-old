#
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

BOARD_VENDOR := oneplus

COMMON_PATH := device/oneplus/sdm845-common

TARGET_SPECIFIC_HEADER_PATH := $(COMMON_PATH)/include

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := kryo385

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := kryo385

TARGET_USES_64_BIT_BINDER := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := sdm845
TARGET_NO_BOOTLOADER := true

# Kernel
BOARD_BOOT_HEADER_VERSION := 1
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom androidboot.console=ttyMSM0 msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 service_locator.enable=1 swiotlb=2048 androidboot.configfs=true androidboot.usbcontroller=a600000.dwc3 firmware_class.path=/vendor/firmware_mnt/image loop.max_part=7
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_SEPARATED_DTBO := true
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)
NEED_KERNEL_MODULE_SYSTEM := true
TARGET_KERNEL_ADDITIONAL_FLAGS := LLVM=1
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_CLANG_COMPILE := true
TARGET_KERNEL_CLANG_VERSION := r383902b1
TARGET_KERNEL_CONFIG := enchilada_defconfig
TARGET_KERNEL_SOURCE := kernel/oneplus/sdm845

# Platform
BOARD_USES_QCOM_HARDWARE := true
TARGET_BOARD_PLATFORM := sdm845

# Properties
TARGET_ODM_PROP += $(COMMON_PATH)/odm.prop
TARGET_PRODUCT_PROP += $(COMMON_PATH)/product.prop
TARGET_SYSTEM_PROP += $(COMMON_PATH)/system.prop
TARGET_VENDOR_PROP += $(COMMON_PATH)/vendor.prop

# Treble
BOARD_VNDK_VERSION := current

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "qualcomm-hidl"

# Audio
AUDIO_FEATURE_ENABLED_AUDIOSPHERE := true
AUDIO_FEATURE_ENABLED_DYNAMIC_LOG := true
AUDIO_FEATURE_ENABLED_EXTENDED_COMPRESS_FORMAT := true
AUDIO_FEATURE_ENABLED_EXTN_FORMATS := true
AUDIO_FEATURE_ENABLED_GEF_SUPPORT := true
AUDIO_FEATURE_ENABLED_HDMI_SPK := true
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := true
AUDIO_FEATURE_ENABLED_SSR := true
BOARD_SUPPORTS_SOUND_TRIGGER := true
BOARD_USES_ALSA_AUDIO := true
USE_CUSTOM_AUDIO_POLICY := 1

## Additional flags from tag 'LA.UM.9.3.r1-02800-sdm845.0' of
## https://source.codeaurora.org/quic/la/platform/hardware/qcom/audio
#AUDIO_FEATURE_QSSI_COMPLIANCE := true
#AUDIO_FEATURE_ENABLED_COMPRESS_CAPTURE := false
#AUDIO_FEATURE_ENABLED_COMPRESS_VOIP := false
#AUDIO_FEATURE_ENABLED_DYNAMIC_ECNS := false
#AUDIO_FEATURE_ENABLED_EXTN_FLAC_DECODER := true
#AUDIO_FEATURE_ENABLED_EXTN_RESAMPLER := true
#AUDIO_FEATURE_ENABLED_FM_POWER_OPT := true
#AUDIO_FEATURE_ENABLED_FLAC_OFFLOAD := true
#AUDIO_FEATURE_ENABLED_VORBIS_OFFLOAD := true
#AUDIO_FEATURE_ENABLED_WMA_OFFLOAD := true
#AUDIO_FEATURE_ENABLED_ALAC_OFFLOAD := true
#AUDIO_FEATURE_ENABLED_APE_OFFLOAD := true
#BOARD_USES_SRS_TRUEMEDIA := false
#DTS_CODEC_M_ := false
#MM_AUDIO_ENABLED_SAFX := true
#AUDIO_FEATURE_ENABLED_USB_TUNNEL := true
#AUDIO_FEATURE_ENABLED_A2DP_OFFLOAD := true
#AUDIO_FEATURE_ENABLED_3D_AUDIO := true
#AUDIO_FEATURE_ENABLED_AHAL_EXT := false
#DOLBY_ENABLE := false
#TARGET_USES_QCOM_MM_AUDIO := true

#AUDIO_USE_DEEP_AS_PRIMARY_OUTPUT := false
#AUDIO_FEATURE_ENABLED_VBAT_MONITOR := true
#AUDIO_FEATURE_ENABLED_NT_PAUSE_TIMEOUT := true
#AUDIO_FEATURE_ENABLED_ANC_HEADSET := true
#AUDIO_FEATURE_ENABLED_CUSTOMSTEREO := true
#AUDIO_FEATURE_ENABLED_FLUENCE := true
#AUDIO_FEATURE_ENABLED_HDMI_EDID := true
#AUDIO_FEATURE_ENABLED_HDMI_PASSTHROUGH := true
#AUDIO_FEATURE_ENABLED_DISPLAY_PORT := true
#AUDIO_FEATURE_ENABLED_HFP := true
#AUDIO_FEATURE_ENABLED_INCALL_MUSIC := true
#AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
#AUDIO_FEATURE_ENABLED_KPI_OPTIMIZE := true
#AUDIO_FEATURE_ENABLED_SPKR_PROTECTION := true
#AUDIO_FEATURE_ENABLED_ACDB_LICENSE := false
#AUDIO_FEATURE_ENABLED_DEV_ARBI := false
#MM_AUDIO_ENABLED_FTM := true
#AUDIO_FEATURE_ENABLED_SOURCE_TRACKING := true
#BOARD_SUPPORTS_QAHW := false
#AUDIO_FEATURE_ENABLED_RAS := true
#AUDIO_FEATURE_ENABLED_SND_MONITOR := true
#AUDIO_FEATURE_ENABLED_SVA_MULTI_STAGE := true

# Display
## Feature flags from tag 'LA.UM.9.3.r1-02800-sdm845.0' of
## https://source.codeaurora.org/quic/la/platform/hardware/qcom/display
MAX_VIRTUAL_DISPLAY_DIMENSION := 4096
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 2
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
TARGET_HAS_WIDE_COLOR_DISPLAY := true
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
TARGET_USES_COLOR_METADATA := true
TARGET_USES_DRM_PP := true
TARGET_USES_GRALLOC1 := true
TARGET_USES_HWC2 := true
TARGET_USES_QCOM_DISPLAY_BSP := true
## Other settings
TARGET_SCREEN_DENSITY := 411
## Needs testing (from oneplus_sm8250-common or Syberia or xiaomi_sdm845-common)
#TARGET_HAS_HDR_DISPLAY := true
#TARGET_USE_COLOR_MANAGEMENT := true
#TARGET_USES_COLOR_METADATA := true
#TARGET_USES_DISPLAY_RENDER_INTENTS := true
#TARGET_USES_GRALLOC4 := true
#TARGET_USES_ION := true
#TARGET_USES_QTI_MAPPER_2_0 := true
#TARGET_USES_QTI_MAPPER_EXTENSIONS_1_1 := true

# DRM
TARGET_ENABLE_MEDIADRM_64 := true

# Filesystem
TARGET_FS_CONFIG_GEN := $(COMMON_PATH)/config.fs

# HIDL
DEVICE_MANIFEST_FILE := $(COMMON_PATH)/manifest.xml
DEVICE_MATRIX_FILE := $(COMMON_PATH)/compatibility_matrix.xml

# Init
TARGET_INIT_VENDOR_LIB ?= //$(COMMON_PATH):libinit_sdm845
TARGET_RECOVERY_DEVICE_MODULES ?= libinit_sdm845

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_DTBOIMG_PARTITION_SIZE := 8388608
BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2998927360
BOARD_USERDATAIMAGE_PARTITION_SIZE := 118112366592
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_PARTITION_SIZE := 1073741824
TARGET_COPY_OUT_VENDOR := vendor
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Power
TARGET_TAP_TO_WAKE_NODE := "/proc/touchpanel/double_tap_enable"

# Recovery
BOARD_USES_RECOVERY_AS_BOOT := true
TARGET_NO_RECOVERY := true
TARGET_RECOVERY_FSTAB := $(COMMON_PATH)/rootdir/etc/fstab.qcom

# RIL
ENABLE_VENDOR_RIL_SERVICE := true

# Security patch level
VENDOR_SECURITY_PATCH := 2021-11-01

# SELinux
include device/qcom/sepolicy_vndr/SEPolicy.mk

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(COMMON_PATH)/sepolicy/private
BOARD_PLAT_PUBLIC_SEPOLICY_DIR += $(COMMON_PATH)/sepolicy/public
BOARD_VENDOR_SEPOLICY_DIRS += $(COMMON_PATH)/sepolicy/vendor

# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 2

# WiFi
BOARD_WLAN_DEVICE := qcwcn
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_DEFAULT := qca_cld3
WIFI_DRIVER_STATE_CTRL_PARAM := "/dev/wlan"
WIFI_DRIVER_STATE_OFF := "OFF"
WIFI_DRIVER_STATE_ON := "ON"
WIFI_HIDL_FEATURE_DUAL_INTERFACE := true
WPA_SUPPLICANT_VERSION := VER_0_8_X

# Inherit from the proprietary version
include vendor/oneplus/sdm845-common/BoardConfigVendor.mk
