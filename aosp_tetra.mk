# Copyright 2014 The Android Open Source Project
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

DEVICE_PACKAGE_OVERLAYS += device/sony/tetra/overlay
    
TARGET_KERNEL_CONFIG := tetra_defconfig

# Inherit from those products. Most specific first.
$(call inherit-product, device/sony/tetra/device.mk)
$(call inherit-product, kernel/tetra/common/AndroidKernel.mk)
$(call inherit-product, vendor/sony/tetra/tetra-vendor.mk)
$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_tiny.mk)

PRODUCT_NAME := aosp_tetra
PRODUCT_DEVICE := tetra
PRODUCT_MODEL := SmartWatch 3
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony

PRODUCT_CHARACTERISTICS := nosdcard,watch
