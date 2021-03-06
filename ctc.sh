#!/bin/bash
#=================================================
# Description: Build OpenWrt using GitHub Actions
# Author: CTC
# https://github.com/kenzok8
#=================================================
rm -rf package/lienol/luci-app-passwall && rm -rf package/lean/luci-app-ssr-plus
rm -rf package/litte/microsocks && rm -rf package/litte/redsocks2 && rm -rf package/litte/tcpping
rm -rf package/litte/adguardhome && rm -rf package/litte/luci-app-adguardhome
rm -rf package/litte/luci-app-advancedsetting && rm -rf package/litte/luci-app-aliddns && rm -rf package/litte/luci-app-clash
rm -rf package/litte/gost && rm -rf package/litte/luci-app-gost && rm -rf package/litte/luci-app-eqos
rm -rf package/ctcgfw/luci-app-openclash && rm -rf package/litte/luci-app-smartdns && rm -rf package/litte/smartdns
rm -rf package/ctcgfw/luci-theme-atmaterial && rm -rf package/ctcgfw/luci-theme-opentomato && rm -rf package/ctcgfw/luci-theme-opentomcat
cp -f package/litte/default-settings package/lean/default-settings/files/zzz-default-settings
cp -f package/litte/banner package/base-files/files/etc/banner
cp -f package/litte/ctcdiffconfig .config && make defconfig
./scripts/feeds update -a
./scripts/feeds install -a





