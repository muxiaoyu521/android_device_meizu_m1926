#
# Copyright (C) 2020 The MoKee Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, vendor/meizu/m1926/m1926-vendor.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Boot animation
TARGET_SCREEN_HEIGHT := 2232
TARGET_SCREEN_WIDTH := 1080

# Permissions
PRODUCT_COPY_FILES += \
    vendor/lineage/config/permissions/vendor.lineage.biometrics.fingerprint.inscreen.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/vendor.lineage.biometrics.fingerprint.inscreen.xml

# Fingerprint
PRODUCT_PACKAGES += \
    mokee.biometrics.fingerprint.inscreen@1.0-service.m1926

# Init
PRODUCT_PACKAGES += \
    init.target.rc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/vendor_fstab.qcom:$(TARGET_COPY_OUT_SYSTEM)/etc/vendor_fstab.qcom

# Inherit from sm6150-common
$(call inherit-product, device/meizu/sm6150-common/common.mk)
