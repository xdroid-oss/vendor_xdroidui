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

PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += \
    $(XDUI_PATH)/overlay

PRODUCT_PACKAGE_OVERLAYS += \
    $(XDUI_PATH)/overlay/common

PRODUCT_PACKAGES += \
    SpringboardOverlay \
    XDSetupOverlay \
    GoogleDialerConfOverlay

# Icon Packs
PRODUCT_PACKAGES += \
    IconPackCircularAndroidOverlay \
    IconPackCircularLauncherOverlay \
    IconPackCircularSettingsOverlay \
    IconPackCircularSystemUIOverlay \
    IconPackCircularThemePickerOverlay \
    IconPackVictorAndroidOverlay \
    IconPackVictorLauncherOverlay \
    IconPackVictorSettingsOverlay \
    IconPackVictorSystemUIOverlay \
    IconPackVictorThemePickerOverlay \
    IconPackSamAndroidOverlay \
    IconPackSamLauncherOverlay \
    IconPackSamSettingsOverlay \
    IconPackSamSystemUIOverlay \
    IconPackSamThemePickerOverlay \
    IconPackKaiAndroidOverlay \
    IconPackKaiLauncherOverlay \
    IconPackKaiSettingsOverlay \
    IconPackKaiSystemUIOverlay \
    IconPackKaiThemePickerOverlay \
    IconPackFilledAndroidOverlay \
    IconPackFilledLauncherOverlay \
    IconPackFilledSettingsOverlay \
    IconPackFilledSystemUIOverlay \
    IconPackFilledThemePickerOverlay \
    IconPackRoundedAndroidOverlay \
    IconPackRoundedLauncherOverlay \
    IconPackRoundedSettingsOverlay \
    IconPackRoundedSystemUIOverlay \
    IconPackRoundedThemePickerOverlay \
    IconPackOxygenAndroidOverlay \
    IconPackOxygenLauncherOverlay \
    IconPackOxygenSettingsOverlay \
    IconPackOxygenSystemUIOverlay \
    IconPackOxygenThemePickerOverlay \
    IconPackOutlineAndroidOverlay \
    IconPackOutlineSettingsOverlay \
    IconPackOutlineSystemUIOverlay

# Icon Shapes
PRODUCT_PACKAGES += \
    IconShapeRoundedRectOverlay \
    IconShapeSquareOverlay \
    IconShapeSquircleOverlay \
    IconShapeTeardropOverlay

# Lockscreen Clock Styles
PRODUCT_PACKAGES += \
     SystemUIClocks-BigNum \
     SystemUIClocks-Calligraphy \
     SystemUIClocks-Flex \
     SystemUIClocks-Growth \
     SystemUIClocks-Inflate \
     SystemUIClocks-Metro \
     SystemUIClocks-NumOverlap \
     SystemUIClocks-Weather

# Themed Icons
PRODUCT_PACKAGES += \
    ThemedIconsOverlay