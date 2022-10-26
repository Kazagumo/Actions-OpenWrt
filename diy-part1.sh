#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

#添加unblockneteasemusic插件包
git clone https://github.com/UnblockNeteaseMusic/luci-app-unblockneteasemusic.git package/x64_gxnas-Software

#添加bypass插件包
git clone https://github.com/kiddin9/openwrt-bypass.git package/x64_gxnas-Software

#添加OpenClash插件包
git clone https://github.com/vernesong/OpenClash.git package/x64_gxnas-Software

#添加mosdns插件包
git clone https://github.com/QiuSimons/openwrt-mos.git package/x64_gxnas-Software  

#添加ssrplus+插件包
git clone https://github.com/fw876/helloworld.git package/x64_gxnas-Software/ssrplus
sed -i '12a entry({"admin", "vpn"}, firstchild(), "GFW", 45).dependent = false' package/x64_gxnas-Software/ssrplus/luci-app-ssr-plus/luasrc/controller/shadowsocksr.lua
