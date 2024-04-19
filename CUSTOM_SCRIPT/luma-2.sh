rm -rf feeds/packages/net/xray-core
rm -rf feeds/fancontrol/gl-sdk4-fan
rm -rf feeds/fancontrol/fancontrol
rm -rf feeds/fancontrol/images
rm -rf feeds/fancontrol/luci-app-fancontrol
rm -rf feeds/packages/net/dnsproxy
./scripts/feeds update -a &&./scripts/feeds install -a
sed -i 's/ +libopenssl-legacy//g' feeds/helloworld/shadowsocksr-libev/Makefile
rm -rf feeds/packages/lang/golang
git clone https://github.com/lbg2008/packages_lang_golang -b 22.x feeds/packages/lang/golang
rm -rf feeds/fancontrol/dnsproxy
curl -L https://alist-home.320888.xyz/d/Oracle/App/dnsproxy.zip -o feeds/fancontrol/dnsproxy.zip
unzip -d feeds/fancontrol/dnsproxy feeds/fancontrol/dnsproxy.zip
rm feeds/fancontrol/dnsproxy.zip
sed -i "s/PKG_VERSION:=0.66.0/PKG_VERSION:=0.69.2/g" "feeds/fancontrol/dnsproxy/Makefile"
sed -i "s/PKG_HASH:=6928b109fb1080fec2aadc0cad20d0c08d13b5ff5db1a7c82ecfe200eec21326/PKG_HASH:=aa1cea0eea683bde017acbb30c09c96b24b30133e157e743666be900ad7560ea/g" "feeds/fancontrol/dnsproxy/Makefile"
