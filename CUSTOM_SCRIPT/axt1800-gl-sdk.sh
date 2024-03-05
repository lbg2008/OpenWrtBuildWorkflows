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
sed -i 's/ +libopenssl-legacy//g' feeds/helloworld/shadowsocksr-libev/Makefile
#sed -i "s/PKG_VERSION:=0.49.0/PKG_VERSION:=0.65.2/g" "feeds/packages/net/dnsproxy/Makefile"
#sed -i "s/PKG_HASH:=4a6a698d830195fd8c04dd32c67e872bfd304fc39dbdaa982935892566b3ae37/PKG_HASH:=7c863404075daf76f1c6b291cc473670cbc45651af8f409e488c10a47fb73117/g" "feeds/packages/net/dnsproxy/Makefile"
rm -rf feeds/packages/lang/golang
git clone https://github.com/sbwml/packages_lang_golang -b 22.x feeds/packages/lang/golang
