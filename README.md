# android_device_xiaomi_aries
基于秋大aosp6.0内核配置的TWRP_recovery编译文件

使用方法：

1.同步cm13源码

repo init -u git://github.com/CyanogenMod/android.git -b cm-13.0

repo sync

如果同步中途出现error: error: Exited sync due to fetch errors 

接着输入以下命令继续同步

repo sync -jx -f --force-sync  x的数值根据你电脑的配置来决定

2.下载xiaolu大神修改后的TWRP

https://github.com/xiaolu/android_bootable_recovery-twrp

下载后替换掉cm13/bootable目录下的recovery

下载对应的common工具
https://github.com/CyanogenMod/android_device_qcom_common

下载放在device/qcom/目录下

3.进入源码目录依次输入命令回车

source build/envsetup.sh

lunch cm_aries-eng

make -jx recoveryimage

编译得到的recovery.img文件在cm13/out/target/product/aries目录下
