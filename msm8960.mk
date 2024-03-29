#
# Copyright (C) 2011 The CyanogenMod Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# overlays
DEVICE_PACKAGE_OVERLAYS += device/htc/msm8960-common/overlay

# Boot ramdisk setup
PRODUCT_COPY_FILES += \
    device/htc/msm8960-common/ramdisk/init.qcom.sh:root/init.qcom.sh

# Qualcomm scripts
PRODUCT_COPY_FILES += \
    device/htc/msm8960-common/configs/init.qcom.bt.sh:/system/etc/init.qcom.bt.sh \
    device/htc/msm8960-common/configs/init.qcom.fm.sh:/system/etc/init.qcom.fm.sh \
    device/htc/msm8960-common/configs/init.qcom.post_boot.sh:/system/etc/init.qcom.post_boot.sh \
    device/htc/msm8960-common/configs/init.post_boot.sh:/system/etc/init.post_boot.sh \
    device/htc/msm8960-common/configs/init.qcom.sdio.sh:/system/etc/init.qcom.sdio.sh \
    device/htc/msm8960-common/configs/init.qcom.wifi.sh:/system/etc/init.qcom.wifi.sh

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardwardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.compass.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# Audio
PRODUCT_PACKAGES += \
    alsa.msm8960 \
    audio.a2dp.default \
    audio_policy.default \
    audio.primary.default \
    audio.primary.msm8960 \
    libalsa-intf \
    libaudioutils

# Camera
PRODUCT_PACKAGES += \
        camera.dlx \
        camera.msm8960 \
        libmmcamera_interface2 \
        libmmcamera_interface

# Graphics
#PRODUCT_PACKAGES += \
    hwcomposer.default \
    hwcomposer.msm8960 \
    libion

PRODUCT_PACKAGES += \
    copybit.msm8960 \
    gralloc.default \
    gralloc.msm8960 \
    hwcomposer.default \
    hwcomposer.msm8960 \
    libgenlock \
    libhwcexternal \
    libhwcservice \
    libmemalloc \
    liboverlay \
    libqdutils \
    libtilerenderer 

# Lights
PRODUCT_PACKAGES += \
    lights.msm8960

# OMX
PRODUCT_PACKAGES += \
    libdivxdrmdecrypt \
    libI420colorconvert \
    libmm-omxcore \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libstagefrighthw

# Power
PRODUCT_PACKAGES += \
    power.msm8960

# HDMI
PRODUCT_PACKAGES += \
    hdmid

# QCOM rngd
PRODUCT_PACKAGES += \
    qrngd

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# PACKAGES


# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# GPS config
PRODUCT_COPY_FILES += \
    device/htc/msm8960-common/configs/gps.conf:system/etc/gps.conf

# Media config
PRODUCT_COPY_FILES += \
    device/htc/msm8960-common/configs/audio_policy.conf:system/etc/audio_policy.conf \
    device/htc/msm8960-common/configs/audio_effects.conf:system/etc/audio_effects.conf \
    device/htc/msm8960-common/configs/media_profiles.xml:system/etc/media_profiles.xml \
    device/htc/msm8960-common/configs/media_codecs.xml:system/etc/media_codecs.xml

# MSM8960 firmware
PRODUCT_COPY_FILES += \
    device/htc/msm8960-common/firmware/a225p5_pm4.fw:/system/etc/firmware/a225p5_pm4.fw \
    device/htc/msm8960-common/firmware/a225_pfp.fw:/system/etc/firmware/a225_pfp.fw \
    device/htc/msm8960-common/firmware/a225_pm4.fw:/system/etc/firmware/a225_pm4.fw \
    device/htc/msm8960-common/firmware/leia_pfp_470.fw:/system/etc/firmware/leia_pfp_470.fw \
    device/htc/msm8960-common/firmware/leia_pm4_470.fw:/system/etc/firmware/leia_pm4_470.fw \
    device/htc/msm8960-common/firmware/vidc_1080p.fw:/system/etc/firmware/vidc_1080p.fw

PRODUCT_COPY_FILES += \
    device/htc/msm8960-common/configs/htcfs.conf:system/etc/htcfs.conf \
    device/htc/msm8960-common/configs/gps.conf:system/etc/gps.conf 


# Common build properties
PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware=true \
    debug.composition.type=gpu \
    debug.enabletr=true \
    ro.hwui.renderer.disable_opaque=true \
    ro.sf.lcd_density=480 \
    debug.egl.hw=0 \
    debug.mdpcomp.maxlayer=1 \
    debug.sf.buffercount=3 \
    debug.sf.hw=1 \
    dalvik.vm.heapsize=256m \
    dalvik.vm.heapgrowthlimit=128m \
    lpa.decode=true \
    persist.audio.fluence.mode=endfire \
    persist.audio.vr.enable=false \
    persist.audio.handset.mic=digital \
    persist.htc.audio.pcm.samplerate=48000 \
    persist.htc.audio.pcm.channels=2
    persist.gps.qmienabled=true \
    persist.thermal.monitor=true \
    ro.baseband.arch=msm \
    ro.opengles.version=131072 \
    ro.product.wireless=WCN3660 \
    ro.qualcomm.bt.hci_transport=smd \
    ro.use_data_netmgrd=false \
    wifi.interface=wlan0
