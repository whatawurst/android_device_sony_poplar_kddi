### DEVICE INIT
PRODUCT_PACKAGES += \
    init.recovery.poplar_kddi \
    init.poplar_kddi \
    fstab.poplar_kddi

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/config/init.poplar_kddi.nfc.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.poplar_kddi.nfc.rc
