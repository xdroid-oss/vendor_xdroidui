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

XDUI_PATH := vendor/xdroidui

# xd. Bootanimation
ifeq ($(XDROID_BOOT),)
$(warning "xdroidUI: Using xd. Dark Bootanimation legacy")
    PRODUCT_COPY_FILES += $(XDUI_PATH)/bootanimation/xd_boot_legacy.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
else
ifeq ($(XDROID_BOOT),480)
$(warning "xdroidUI: Using xd. Dark Bootanimation 480p")
    PRODUCT_COPY_FILES += $(XDUI_PATH)/bootanimation/xd_boot_480.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
endif
ifeq ($(XDROID_BOOT),720)
$(warning "xdroidUI: Using xd. Dark Bootanimation 720p")
    PRODUCT_COPY_FILES += $(XDUI_PATH)/bootanimation/xd_boot_720.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
endif
ifeq ($(XDROID_BOOT),1080)
$(warning "xdroidUI: Using xd. Dark Bootanimation 1080p")
    PRODUCT_COPY_FILES += $(XDUI_PATH)/bootanimation/xd_boot_1080.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
endif
ifeq ($(XDROID_BOOT),1440)
$(warning "xdroidUI: Using xd. Dark Bootanimation 1440p")
    PRODUCT_COPY_FILES += $(XDUI_PATH)/bootanimation/xd_boot_1440.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
endif
endif
