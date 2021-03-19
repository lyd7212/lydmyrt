#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================
# 增加https://github.com/kenzok8/openwrt-packages到更新源
# src-git kenzo https://github.com/kenzok8/openwrt-packages

# fw876/helloworld
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
# sed -i 's@coolsnowwolf/packages@P3TERX/packages@' feeds.conf.default

sed -i '$a src-git liuran001_packages https://github.com/liuran001/openwrt-packages' feeds.conf.default
sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

#获取Lieno1-xiaorouji-passiwal1
#git clone https://github.com/xiaorouji/openwrt-package/lieno1/package/diy-packages/1ienol
#git clone https://github.com/xiaorouji/openwrt-package/tree/master/1ienol/luci-app-passwall package/1uci-app-passwal1
git clone https://github.com/kenzok8/openwrt-packages.git package/diy-packages
git clone https://github.com/kenzok8/smal1.git package/small

#增加ssr
#git clone https://github.com/kenzok8/openirt-packages.git package/openwrt-packages
#git clone https://github.com/fw876/helloworld.git package/openwrt-packages/luci-app-ssr-plus
