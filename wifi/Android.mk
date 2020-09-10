# Copyright 2006 The Android Open Source Project

ifdef WIFI_DRIVER_MODULE_PATH
LOCAL_CFLAGS += -DWIFI_DRIVER_MODULE_PATH=\"$(WIFI_DRIVER_MODULE_PATH)\"
endif
ifdef WIFI_DRIVER_MODULE_ARG
LOCAL_CFLAGS += -DWIFI_DRIVER_MODULE_ARG=\"$(WIFI_DRIVER_MODULE_ARG)\"
endif
ifdef WIFI_DRIVER_MODULE_AP_ARG
LOCAL_CFLAGS += -DWIFI_DRIVER_MODULE_AP_ARG=\"$(WIFI_DRIVER_MODULE_AP_ARG)\"
endif
ifdef WIFI_DRIVER_MODULE_NAME
LOCAL_CFLAGS += -DWIFI_DRIVER_MODULE_NAME=\"$(WIFI_DRIVER_MODULE_NAME)\"
endif
ifdef WIFI_FIRMWARE_LOADER
LOCAL_CFLAGS += -DWIFI_FIRMWARE_LOADER=\"$(WIFI_FIRMWARE_LOADER)\"
endif
ifdef WIFI_DRIVER_FW_PATH_STA
LOCAL_CFLAGS += -DWIFI_DRIVER_FW_PATH_STA=\"$(WIFI_DRIVER_FW_PATH_STA)\"
endif
ifdef WIFI_DRIVER_FW_PATH_AP
LOCAL_CFLAGS += -DWIFI_DRIVER_FW_PATH_AP=\"$(WIFI_DRIVER_FW_PATH_AP)\"
endif
ifdef WIFI_DRIVER_FW_PATH_P2P
LOCAL_CFLAGS += -DWIFI_DRIVER_FW_PATH_P2P=\"$(WIFI_DRIVER_FW_PATH_P2P)\"
endif
ifdef WIFI_DRIVER_FW_PATH_PARAM
LOCAL_CFLAGS += -DWIFI_DRIVER_FW_PATH_PARAM=\"$(WIFI_DRIVER_FW_PATH_PARAM)\"
endif
ifdef WIFI_EXT_MODULE_PATH
LOCAL_CFLAGS += -DWIFI_EXT_MODULE_PATH=\"$(WIFI_EXT_MODULE_PATH)\"
endif
ifdef WIFI_EXT_MODULE_ARG
LOCAL_CFLAGS += -DWIFI_EXT_MODULE_ARG=\"$(WIFI_EXT_MODULE_ARG)\"
endif
ifdef WIFI_EXT_MODULE_NAME
LOCAL_CFLAGS += -DWIFI_EXT_MODULE_NAME=\"$(WIFI_EXT_MODULE_NAME)\"
endif

ifdef WIFI_DRIVER_STATE_CTRL_PARAM
LOCAL_CFLAGS += -DWIFI_DRIVER_STATE_CTRL_PARAM=\"$(WIFI_DRIVER_STATE_CTRL_PARAM)\"
endif
ifdef WIFI_DRIVER_STATE_ON
LOCAL_CFLAGS += -DWIFI_DRIVER_STATE_ON=\"$(WIFI_DRIVER_STATE_ON)\"
endif
ifdef WIFI_DRIVER_STATE_OFF
LOCAL_CFLAGS += -DWIFI_DRIVER_STATE_OFF=\"$(WIFI_DRIVER_STATE_OFF)\"
endif

ifdef WIFI_DRIVER_OPERSTATE_PATH
LOCAL_CFLAGS += -DWIFI_DRIVER_OPERSTATE_PATH=\"$(WIFI_DRIVER_OPERSTATE_PATH)\"
endif

ifdef WIFI_FST_DRIVER_MODULE_PATH
LOCAL_CFLAGS += -DWIFI_FST_DRIVER_MODULE_PATH=\"$(WIFI_FST_DRIVER_MODULE_PATH)\"
endif
ifdef WIFI_FST_DRIVER_MODULE_ARG
LOCAL_CFLAGS += -DWIFI_FST_DRIVER_MODULE_ARG=\"$(WIFI_FST_DRIVER_MODULE_ARG)\"
endif
ifdef WIFI_FST_DRIVER_MODULE_NAME
LOCAL_CFLAGS += -DWIFI_FST_DRIVER_MODULE_NAME=\"$(WIFI_FST_DRIVER_MODULE_NAME)\"
endif

LOCAL_SRC_FILES += wifi/wifi.c wifi/wifi_fst.c

ifdef WPA_SUPPLICANT_VERSION
LOCAL_CFLAGS += -DLIBWPA_CLIENT_EXISTS
LOCAL_SHARED_LIBRARIES += libwpa_client
endif

ifeq ($(BOARD_HAVE_SAMSUNG_WIFI),true)
LOCAL_CFLAGS += -DSAMSUNG_WIFI
LOCAL_C_INCLUDES += hardware/samsung/macloader/include
endif

LOCAL_SHARED_LIBRARIES += libnetutils
