$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Add this line if your device is 64-bit
#$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
# Otherwise, If you have 32-bit device, add the below line instead of above line
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk

# Another common config inclusion
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# If you are building from OmniROM's minimal source, Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Replace Cloud_Q11 with your Device Name's Value.
# Replace Intex with your Brand's / Manufacturer's Value.
PRODUCT_COPY_FILES += device/Intex/Cloud_Q11/prebuilt/kernel:kernel
# Fles under $(LOCAL_PATH)/recovery/root/ gets automatically copied into recovery
# PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/root/*:root/*

PRODUCT_DEVICE := Cloud_Q11
PRODUCT_NAME := omni_Cloud_Q11
PRODUCT_BRAND := Intex
PRODUCT_MODEL := Cloud_Q11
PRODUCT_MANUFACTURER := Intex

# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Add fingerprint from Stock ROM build.prop
PRODUCT_BUILD_PROP_OVERRIDES += \
    # These lines are from my device. You MUST Replace yours.
    BUILD_FINGERPRINT="alps/6.0/MRA58K/1470300415:user/test-keys" \
    PRIVATE_BUILD_DESC="full_vsun6580_we_m-user 6.0 MRA58K 1470300415 test-keys"