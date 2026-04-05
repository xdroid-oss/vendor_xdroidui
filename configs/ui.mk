#
# Copyright (C) 2021 xdroid, and xyzprjkt
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# xd. Bootanimation
ifeq ($(TARGET_BOOT_ANIMATION_RES),)
$(warning "xdroidui: TARGET_BOOT_ANIMATION_RES not defined, using legacy")
    PRODUCT_COPY_FILES += $(XDUI_PATH)/bootanimation/xd_boot_legacy.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
else
ifeq ($(TARGET_BOOT_ANIMATION_RES),480)
    PRODUCT_COPY_FILES += $(XDUI_PATH)/bootanimation/xd_boot_480.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
endif
ifeq ($(TARGET_BOOT_ANIMATION_RES),720)
    PRODUCT_COPY_FILES += $(XDUI_PATH)/bootanimation/xd_boot_720.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
endif
ifeq ($(TARGET_BOOT_ANIMATION_RES),1080)
    PRODUCT_COPY_FILES += $(XDUI_PATH)/bootanimation/xd_boot_1080.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
endif
ifeq ($(TARGET_BOOT_ANIMATION_RES),1440)
    PRODUCT_COPY_FILES += $(XDUI_PATH)/bootanimation/xd_boot_1440.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
endif
endif

# Ringrones
PRODUCT_COPY_FILES += \
    $(XDUI_PATH)/media/audio/ringtones/Nest.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/Nest.ogg \
    $(XDUI_PATH)/media/audio/ringtones/Running.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/Running.ogg \
    $(XDUI_PATH)/media/audio/ringtones/Sticks.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/Sticks.ogg

# Notifications
PRODUCT_COPY_FILES += \
    $(XDUI_PATH)/media/audio/notifications/Brightside.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/Brightside.ogg \
    $(XDUI_PATH)/media/audio/notifications/Dash.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/Dash.ogg \
    $(XDUI_PATH)/media/audio/notifications/Keys.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/Keys.ogg \
    $(XDUI_PATH)/media/audio/notifications/North.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/North.ogg \
    $(XDUI_PATH)/media/audio/notifications/Oxidation.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/Oxidation.ogg \
    $(XDUI_PATH)/media/audio/notifications/Radar.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/Radar.ogg \
    $(XDUI_PATH)/media/audio/notifications/Spaceship.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/Spaceship.ogg \
    $(XDUI_PATH)/media/audio/notifications/Sticks.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/Sticks.ogg

# System UI Effects
PRODUCT_COPY_FILES += \
    $(XDUI_PATH)/media/audio/ui/ChargingStarted.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/ChargingStarted.ogg \
    $(XDUI_PATH)/media/audio/ui/Lock.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/Lock.ogg \
    $(XDUI_PATH)/media/audio/ui/LowBattery.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/LowBattery.ogg \
    $(XDUI_PATH)/media/audio/ui/Unlock.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/Unlock.ogg

# Set default ringtone and notification sound
ifneq ($(WITH_GMS),true)
PRODUCT_PRODUCT_PROPERTIES += \
    ro.config.notification_sound=Brightside.ogg \
    ro.config.ringtone=Sticks.ogg
endif

# Fonts
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(XDUI_PATH)/fonts,$(TARGET_COPY_OUT_PRODUCT)/fonts) \
    $(XDUI_PATH)/etc/fonts_customization.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/fonts_customization.xml

PRODUCT_PACKAGES += \
    FontGoogleSans

# Power off charging resource
PRODUCT_PACKAGES += \
    charger_res_images \
    product_charger_res_images \
    product_charger_res_images_vendor
