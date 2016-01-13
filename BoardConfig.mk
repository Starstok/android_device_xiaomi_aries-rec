USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/xiaomi/aries/BoardConfigVendor.mk

TARGET_ARCH                  := arm
TARGET_NO_BOOTLOADER         := true
TARGET_BOARD_PLATFORM        := msm8960
TARGET_CPU_ABI               := armeabi-v7a
TARGET_CPU_ABI2              := armeabi
TARGET_ARCH_VARIANT          := armv7-a-neon
TARGET_CPU_VARIANT           := krait
TARGET_CPU_SMP               := true
ARCH_ARM_HAVE_TLS_REGISTER   := true

TARGET_BOOTLOADER_BOARD_NAME := aries

#kernel
TARGET_PREBUILT_KERNEL := device/xiaomi/aries/kernel
BOARD_KERNEL_CMDLINE      := console=null androidboot.hardware=qcom ehci-hcd.park=3 maxcpus=2 androidboot.bootdevice=msm_sdcc.1 androidboot.selinux=permissive
BOARD_KERNEL_BASE         := 0x80200000
BOARD_KERNEL_PAGESIZE     := 2048
BOARD_MKBOOTIMG_ARGS      := --ramdisk_offset 0x02000000

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE     := 16777216   #16M  boot
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216   #16M  recovery
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 1073741824 #1024M system
BOARD_USERDATAIMAGE_PARTITION_SIZE := 536870912  #512M data
BOARD_FLASH_BLOCK_SIZE             := 131072
BOARD_HAS_NO_SELECT_BUTTON         := true

# TWRP configuration
DEVICE_RESOLUTION                       := 720x1280
BOARD_HAS_NO_REAL_SDCARD                := true
BOARD_RECOVERY_SWIPE                    := true
TARGET_PREBUILT_RECOVERY_KERNEL         := $(call my-dir)/kernel
RECOVERY_GRAPHICS_USE_LINELENGTH        := true
TARGET_RECOVERY_PIXEL_FORMAT            := "RGBX_8888"
TARGET_RECOVERY_FSTAB                   := device/xiaomi/aries/recovery/twrp.fstab
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID  := true
RECOVERY_FSTAB_VERSION                  := 2
BOARD_NATIVE_DUALBOOT                   := true
BOARD_NATIVE_DUALBOOT_SINGLEDATA        := true
TW_INCLUDE_CRYPTO                       := true
TW_NO_SCREEN_TIMEOUT                    := true
TW_NO_SCREEN_BLANK                      := true
TARGET_RECOVERY_QCOM_RTC_FIX            := true
BOARD_SUPPRESS_SECURE_ERASE             := true
BOARD_SUPPRESS_EMMC_WIPE                := true
RECOVERY_SDCARD_ON_DATA                 := true
