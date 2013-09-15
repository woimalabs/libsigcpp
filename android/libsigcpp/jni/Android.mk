LOCAL_PATH:=$(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libsigcpp
LOCAL_C_INCLUDES := $(SOURCE)
LOCAL_CFLAGS := -DANDROID_NDK -DPLAY_MOD
LOCAL_CPP_EXTENSION := .cc

LOCAL_SRC_FILES := \
../../../libsigc++-2.2.10/sigc++/signal.cc \
../../../libsigc++-2.2.10/sigc++/signal_base.cc \
../../../libsigc++-2.2.10/sigc++/connection.cc \
../../../libsigc++-2.2.10/sigc++/trackable.cc \
../../../libsigc++-2.2.10/sigc++/functors/slot_base.cc \
../../../libsigc++-2.2.10/sigc++/functors/slot.cc \
../../../libsigc++-2.2.10/sigc++/adaptors/lambda/lambda.cc

LOCAL_CC_INCLUDES += \
$(LOCAL_PATH) \
$(LOCAL_PATH)/functors \
$(LOCAL_PATH)/adaptors \
$(LOCAL_PATH)/adaptors/lamda \
LOCAL_CFLAGS += -fvisibility=hidden

LOCAL_LDLIBS := -lz


include $(BUILD_SHARED_LIBRARY)

