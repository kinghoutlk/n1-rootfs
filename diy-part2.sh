
#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#




#添加luci-app-amlogic
svn co https://github.com/ophub/luci-app-amlogic/trunk/luci-app-amlogic package/luci-app-amlogic

#添加luci-app-tencentddns
svn co https://github.com/kenzok8/small-package/tree/main/luci-app-tencentddns package/luci-app-tencentddns




./scripts/feeds update -a
./scripts/feeds install -a -f


# python-cryptography
# rm -rf feeds/packages/lang/python/python-cryptography
# svn co https://github.com/openwrt/packages/trunk/lang/python/python-cryptography feeds/packages/lang/python/python-cryptography
