# Common QCOM configuration tools
$(call inherit-product, device/qcom/common/Android.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/xiaomi/aries/aries-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/xiaomi/aries/overlay


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/xiaomi/aries/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG       := normal hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG  := xhdpi

# Recovery allowed devices
TARGET_OTA_ASSERT_DEVICE := aries

# Recovery
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/recovery/init.recovery.qcom.rc:root/init.recovery.qcom.rc \
	$(LOCAL_PATH)/recovery/twrp.fstab:recovery/root/etc/twrp.fstab

ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.adb.secure=0

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_aries
PRODUCT_DEVICE := aries
