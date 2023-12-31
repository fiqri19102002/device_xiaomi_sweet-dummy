# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from sweet device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := sweet
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_NAME := lineage_sweet
PRODUCT_MODEL := Redmi Note 10 Pro

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := sweet
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="missi_phonenonab_global-user 13 TKQ1.221013.002 V14.0.8.0.TKFMIXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Redmi/sweet_global/sweet:13/RKQ1.210614.002/V14.0.8.0.TKFMIXM:user/release-keys
