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
#sed -i 's/ +libopenssl-legacy//g' feeds/helloworld/shadowsocksr-libev/Makefile
#sed -i "/PKG_VERSION:=0.49.0/d" "feeds/packages/net/dnsproxy/Makefile"
#sed -i "/PKG_HASH/d" "feeds/packages/net/dnsproxy/Makefile"
#echo "PKG_VERSION:=0.65.2" >> "feeds/packages/net/dnsproxy/Makefile"
#echo "PKG_HASH:=7c863404075daf76f1c6b291cc473670cbc45651af8f409e488c10a47fb73117" >> "feeds/packages/net/dnsproxy/Makefile"
rm -rf feeds/packages/lang/golang
git clone https://github.com/sbwml/packages_lang_golang -b 22.x feeds/packages/lang/golang
