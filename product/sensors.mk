# Sensors configurations
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sap.conf:system/etc/sap.conf

# Sensors properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qti.sensors.dev_ori=false \
    ro.qti.sensors.pmd=false \
    ro.qti.sensors.sta_detect=false \
    ro.qti.sensors.mot_detect=false
