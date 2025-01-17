#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
echo 'src-git helloworld https://github.com/fw876/helloworld' >> feeds.conf.default
sed -i '/^src-git luci https:\/\/github.com\/coolsnowwolf\/luci/s/^/#/' feeds.conf.default
sed -i '/^#src-git luci https:\/\/github.com\/coolsnowwolf\/luci.git;openwrt-23.05/s/^#//' feeds.conf.default

# echo 'src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main' >> feeds.conf.default
# echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall.git;4.77-6' >> feeds.conf.default
# echo 'src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2;1.29-1' >> feeds.conf.default
# sed -i '1i src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
# sed -i '2i src-git small https://github.com/kenzok8/small' feeds.conf.default
