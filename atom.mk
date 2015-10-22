LOCAL_PATH := $(call my-dir)

###############################################################################
# liblua
###############################################################################

include $(CLEAR_VARS)

LOCAL_MODULE := liblua
LOCAL_DESCRIPTION := The library for the lua language
LOCAL_CATEGORY_PATH := scripting

LOCAL_INSTALL_HEADERS := \
	src/lua.h:usr/include/ \
	src/luaconf.h:usr/include/ \
	src/lualib.h:usr/include/ \
	src/lauxlib.h:usr/include/ \
	src/lua.hpp:usr/include/

LOCAL_SRC_FILES := src/lapi.c \
	src/lcode.c \
	src/lctype.c \
	src/ldebug.c \
	src/ldo.c \
	src/ldump.c \
	src/lfunc.c \
	src/lgc.c \
	src/llex.c \
	src/lmem.c \
	src/lobject.c \
	src/lopcodes.c \
	src/lparser.c \
	src/lstate.c \
	src/lstring.c \
	src/ltable.c \
	src/ltm.c \
	src/lundump.c \
	src/lvm.c \
	src/lzio.c \
	src/lauxlib.c \
	src/lbaselib.c \
	src/lbitlib.c \
	src/lcorolib.c \
	src/ldblib.c \
	src/liolib.c \
	src/lmathlib.c \
	src/loslib.c \
	src/lstrlib.c \
	src/ltablib.c \
	src/loadlib.c \
	src/linit.c \

LOCAL_CFLAGS := \
	-DLUA_USE_LINUX \
	-Wno-format-nonliteral

LOCAL_LDLIBS := -ldl -lm

include $(BUILD_SHARED_LIBRARY)

###############################################################################
# lua
###############################################################################

include $(CLEAR_VARS)

LOCAL_MODULE := lua
LOCAL_DESCRIPTION := Interpreter for the lua scripting language
LOCAL_CATEGORY_PATH := scripting

LOCAL_SRC_FILES := src/lua.c

LOCAL_LIBRARIES := liblua readline6

LOCAL_CFLAGS=-DLUA_USE_LINUX

include $(BUILD_EXECUTABLE)

###############################################################################
# luac
###############################################################################

include $(CLEAR_VARS)

LOCAL_MODULE := luac
LOCAL_DESCRIPTION := Bytecode compiler for lua code
LOCAL_CATEGORY_PATH := scripting

LOCAL_SRC_FILES := src/luac.c

LOCAL_LIBRARIES := liblua

LOCAL_CFLAGS=-DLUA_USE_LINUX

include $(BUILD_EXECUTABLE)


