# Copyright 2006 The Android Open Source Project

ifneq ($(filter $(ZTE_TARGETS),$(TARGET_DEVICE)),)

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES:= \
    ril.cpp \
    ril_event.cpp

LOCAL_SHARED_LIBRARIES := \
    libutils \
    libbinder \
    libcutils \
    libhardware_legacy

LOCAL_CFLAGS :=

LOCAL_MODULE:= libril

LOCAL_LDLIBS += -lpthread

include $(BUILD_SHARED_LIBRARY)

endif
