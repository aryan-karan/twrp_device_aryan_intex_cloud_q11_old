# Replace Cloud_Q11 with your Device CodeName's Value. Mine is Primo_RX5.
# Replace Intex with your Brand/Vendor/Manufacturer's Value, Mine is WALTON 

ifneq ($(filter Cloud_Q11,$(TARGET_DEVICE)),)
LOCAL_PATH := device/Intex/Cloud_Q11
include $(call all-makefiles-under,$(LOCAL_PATH))
endif