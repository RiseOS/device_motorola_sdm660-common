# Board platforms lists to be used for
# TARGET_BOARD_PLATFORM specific featurization
QCOM_BOARD_PLATFORMS += msm8998 sdm660

#List of targets that use video hw
MSM_VIDC_TARGET_LIST := msm8998 sdm660

#List of targets that use master side content protection
MASTER_SIDE_CP_TARGET_LIST := msm8998 sdm660

QCOM_MEDIA_ROOT := hardware/qcom/media/msm8998

OMX_VIDEO_PATH := mm-video-v4l2
media-hal := $(QCOM_MEDIA_ROOT)

# This defs are used on the camera hal, may not be needed
#SRC_CAMERA_HAL_DIR ?= vendor/qcom/opensource/camera
# SRC_DISPLAY_HAL_DIR := hardware/qcom/display/msm8998
# SRC_MEDIA_HAL_DIR := $(QCOM_MEDIA_ROOT)

include device/sony/common/hardware/qcom/utils.mk

include hardware/qcom/display/aosp/msm8998/Android.mk
include $(call all-makefiles-under,$(media-hal))
#include hardware/qcom/media/msm8998/Android.mk
