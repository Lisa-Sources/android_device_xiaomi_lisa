#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lisa device
$(call inherit-product, device/xiaomi/lisa/device.mk)

# Inherit some common Evolution-X stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# Evolution-X Stuff
EVO_BUILD_TYPE := Official
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := lisa
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := 2109119DG
PRODUCT_NAME := lineage_lisa

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="lisa_global-user 14 UKQ1.231108.001 V816.0.9.0.UKOMIXM release-keys" \
    BuildFingerprint=Xiaomi/lisa_global/lisa:14/UKQ1.231108.001/V816.0.9.0.UKOMIXM:user/release-keys
