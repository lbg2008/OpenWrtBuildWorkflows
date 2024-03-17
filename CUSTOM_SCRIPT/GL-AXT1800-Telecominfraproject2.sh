#!/bin/bash
# Copyright (c) 2022-2023 Curious <https://www.curious.host>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
# 
# https://github.com/Curious-r/OpenWrtBuildWorkflows
# Description: Automatically check OpenWrt source code update and build it. No additional keys are required.
#-------------------------------------------------------------------------------------------------------
#
#
# Patching is generally recommended.
# # Here's a template for patching:
#touch example.patch
#cat>example.patch<<EOF
#patch content
#EOF
#git apply example.patch
#sed -i "s/+chinadns-ng +dns2socks/+dns2socks/g" "feeds/passwall/luci-app-passwall/Makefile"
sed -i 's/ +libopenssl-legacy//g' feeds/helloworld/shadowsocksr-libev/Makefile
rm -rf feeds/packages/lang/golang
git clone https://github.com/lbg2008/packages_lang_golang -b 21.x feeds/packages/lang/golang
