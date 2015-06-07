LOCAL_PATH := $(call my-dir)

#----------------------------------------------------------------------
# extra images
#----------------------------------------------------------------------
include build/core/generate_extra_images.mk
# Compile the kernel inline

ifeq ($(strip $(USE_SABER_INLINE_KERNEL_BUILDING)),true)
ifdef SM_VENDOR
  include $(SM_VENDOR)/device/kernel.mk
endif
endif

