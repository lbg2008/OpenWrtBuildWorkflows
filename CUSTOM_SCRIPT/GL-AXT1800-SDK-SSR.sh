rm -rf feeds/packages/net/xray-core
./scripts/feeds install -a
sed -i 's/ +libopenssl-legacy//g' feeds/helloworld/shadowsocksr-libev/Makefile
rm -rf feeds/gl_feed_common/golang
git clone https://github.com/sbwml/packages_lang_golang -b 22.x feeds/gl_feed_common/golang
rm -rf feeds/packages/lang/golang
git clone https://github.com/sbwml/packages_lang_golang -b 22.x feeds/packages/lang/golang
