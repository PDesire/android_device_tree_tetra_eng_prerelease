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


SOMC_PLATFORM := tetra

SONY_ROOT:= device/sony/tetra/rootdir

SONY_SYSTEM:= device/sony/tetra

# Device Specific Hardware
PRODUCT_COPY_FILES += \
    $(SONY_SYSTEM)/frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    $(SONY_SYSTEM)/frameworks/native/data/etc/android.hardware.screen.portrait.xml:system/etc/permissions/android.hardware.screen.portrait.xml \
    $(SONY_SYSTEM)/frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    $(SONY_SYSTEM)/frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    $(SONY_SYSTEM)/frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    $(SONY_SYSTEM)/frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    $(SONY_SYSTEM)/frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    $(SONY_SYSTEM)/frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    $(SONY_SYSTEM)/frameworks/native/data/etc/clockwork-system.xml:system/etc/permissions/clockwork-system.xml \
    $(SONY_SYSTEM)/frameworks/native/data/etc/com.google.android.wearable.xml:system/etc/permissions/com.google.android.wearable.xml \
    $(SONY_SYSTEM)/frameworks/native/data/etc/com.sonymobile.watch.xml:system/etc/permissions/com.sonymobile.watch.xml \
    $(SONY_SYSTEM)/frameworks/native/data/etc/gps.xml:system/etc/permissions/gps.xml \
    $(SONY_SYSTEM)/frameworks/native/data/etc/watch_features.xml:system/etc/permissions/watch_features.xml \
    $(SONY_SYSTEM)/frameworks/native/data/etc/wearable_core_hardware.xml:system/etc/permissions/wearable_core_hardware.xml
    
    

# tetra init
PRODUCT_COPY_FILES += \
    device/sony/tetra/rootdir/ueventd.tetra.rc:root/ueventd.tetra.rc \
    device/sony/tetra/rootdir/init.tetra.rc:root/init.tetra.rc \
    device/sony/tetra/rootdir/init.tetra.pwr.rc:root/init.tetra.pwr.rc \
    device/sony/tetra/rootdir/init.tetra.usb.rc:root/init.tetra.usb.rc \
    device/sony/tetra/rootdir/init.tetra.debug.rc:root/init.tetra.debug.rc \
    device/sony/tetra/rootdir/fstab.tetra:root/fstab.tetra \
    device/sony/tetra/rootdir/fstab.swap.tetra:root/fstab.swap.tetra \
    device/sony/tetra/rootdir/init.debug.sonyextras.rc:root/init.debug.sonyextras.rc \
    device/sony/tetra/rootdir/sbin/wait4tad_static:root/sbin/wait4tad_static \
    device/sony/tetra/rootdir/sbin/tad_static:root/sbin/tad_static

# Keylayout
PRODUCT_COPY_FILES += \
    $(SONY_ROOT)/system/usr/keylayout/bcmpmu_on.kcm:system/usr/keylayout/bcmpmu_on.kcm
    
PRODUCT_COPY_FILES += \
    $(SONY_ROOT)/system/usr/keylayout/bcmpmu_on.kl:system/usr/keylayout/bcmpmu_on.kl
    
PRODUCT_COPY_FILES += \
    $(SONY_ROOT)/system/usr/keylayout/synaptics_dsx.kl:system/usr/keylayout/synaptics_dsx.kl

# IDC
PRODUCT_COPY_FILES += \
    $(SONY_ROOT)/system/usr/idc/synaptics_dsx.idc:system/usr/idc/synaptics_dsx.idc
    
PRODUCT_COPY_FILES += \
    $(SONY_ROOT)/system/etc/clatd.conf:system/etc/clatd.conf
    
PRODUCT_COPY_FILES += \
    $(SONY_ROOT)/system/etc/asound.conf:system/etc/asound.conf
    
PRODUCT_COPY_FILES += \
    $(SONY_ROOT)/system/etc/audio_policy.conf:system/etc/audio_policy.conf
    
PRODUCT_COPY_FILES += \
    $(SONY_ROOT)/system/etc/sensors.conf:system/etc/sensors.conf
    
PRODUCT_COPY_FILES += \
    $(SONY_ROOT)/system/etc/wifi/bcmdhd.cal:system/etc/wifi/bcmdhd.cal
    
PRODUCT_COPY_FILES += \
    $(SONY_ROOT)/system/etc/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf
    
PRODUCT_COPY_FILES += \
    $(SONY_ROOT)/system/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf
    
PRODUCT_COPY_FILES += \
    $(SONY_ROOT)/system/etc/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf
    
    
PRODUCT_COPY_FILES += \
    $(SONY_ROOT)/system/etc/gps/gps.conf:system/etc/gps/gps.conf
    
PRODUCT_COPY_FILES += \
    $(SONY_ROOT)/system/etc/gps/glconfig.xml:system/etc/gps/glconfig.xml


# Media
PRODUCT_COPY_FILES += \
    $(SONY_ROOT)/system/etc/media_codecs.xml:system/etc/media_codecs.xml

# Lights
PRODUCT_PACKAGES += \
    lights.tetra

# Simple PowerHAL
PRODUCT_PACKAGES += \
    power.bcm_java

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.primary.bcm_java

# GFX
PRODUCT_PACKAGES += \
    gralloc.bcm_java \

# GPS
PRODUCT_PACKAGES += \
    gps.bcm_java

# WLAN
PRODUCT_PACKAGES += \
    p2p_supplicant.conf \
    dhcpcd.conf \
    libwpa_client \
    wpa_supplicant \
    wpa_supplicant.conf

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

# Limit dex2oat threads to improve thermals
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat-threads=2 \
    dalvik.vm.image-dex2oat-threads=2

# Wi-Fi interface name
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0

# BT address
PRODUCT_PROPERTY_OVERRIDES += \
    ro.bt.bdaddr_path=/data/etc/bluetooth_bdaddr

PRODUCT_AAPT_CONFIG := small
PRODUCT_AAPT_PREBUILT_DPI := hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_PROPERTY_OVERRIDES := \
    ro.sf.lcd_density=280
