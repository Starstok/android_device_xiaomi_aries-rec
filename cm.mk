# Release name
PRODUCT_RELEASE_NAME := aries

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/xiaomi/aries/device_aries.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := aries
PRODUCT_NAME := cm_aries
PRODUCT_BRAND := xiaomi
PRODUCT_MODEL := aries
PRODUCT_MANUFACTURER := xiaomi
