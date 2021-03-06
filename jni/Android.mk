LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_C_INCLUDES:= $(LOCAL_PATH)/../include/
LOCAL_SRC_FILES:= ../mixer.c ../pcm.c
LOCAL_MODULE := libtinyalsa
LOCAL_SHARED_LIBRARIES:= libcutils libutils
LOCAL_MODULE_TAGS := optional
LOCAL_PRELINK_MODULE := false

APP_PLATFORM := android-16
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_C_INCLUDES:= $(LOCAL_PATH)/../include
LOCAL_SRC_FILES:= ../tinyplay.c
LOCAL_MODULE := tinyplay
LOCAL_SHARED_LIBRARIES:= libcutils libutils libtinyalsa
LOCAL_MODULE_TAGS := optional

APP_PLATFORM := android-16
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_C_INCLUDES:= $(LOCAL_PATH)/../include/
LOCAL_SRC_FILES:= ../tinycap.c
LOCAL_MODULE := tinycap
LOCAL_SHARED_LIBRARIES:= libcutils libutils libtinyalsa
LOCAL_MODULE_TAGS := optional

APP_PLATFORM := android-16
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_C_INCLUDES:= $(LOCAL_PATH)/../include/
LOCAL_SRC_FILES:= ../tinymix.c
LOCAL_MODULE := tinymix
LOCAL_SHARED_LIBRARIES:= libcutils libutils libtinyalsa
LOCAL_MODULE_TAGS := optional

APP_PLATFORM := android-16
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_C_INCLUDES:= $(LOCAL_PATH)/../include/
LOCAL_SRC_FILES:= ../tinypcminfo.c
LOCAL_MODULE := tinypcminfo
LOCAL_SHARED_LIBRARIES:= libcutils libutils libtinyalsa
LOCAL_MODULE_TAGS := optional

APP_PLATFORM := android-16
include $(BUILD_EXECUTABLE)
