#
# Copyright (C) 2017 KuCK@XDAdev
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#


# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from condor device
$(call inherit-product, device/motorola/condor/device.mk)

include device/qcom/common/common.mk

# Inherit AOSP device configuration
$(call inherit-product, device/motorola/condor/full_condor.mk)

TARGET_BOOT_ANIMATION_RES := 720

PRODUCT_NAME := pa_condor
PRODUCT_DEVICE := condor
PRODUCT_BRAND := motorola
PRODUCT_MODEL := condor
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

# Paranoid Android platform
include vendor/pa/main.mk
