rm -rf feeds/packages/net/xray-core
./scripts/feeds update -a &&./scripts/feeds install -a
sed -i 's/ +libopenssl-legacy//g' feeds/helloworld/shadowsocksr-libev/Makefile
rm -rf feeds/gl_feed_common/golang
git clone https://github.com/lbg2008/packages_lang_golang -b 22.x feeds/gl_feed_common/golang
rm -rf feeds/packages/lang/golang
git clone https://github.com/lbg2008/packages_lang_golang -b 22.x feeds/packages/lang/golang
rm -rf feeds/glinet/dnsproxy
curl -L https://alist.320888.xyz/d/Oracle-Chuncheon/APP/dnsproxy.zip -o feeds/glinet/dnsproxy.zip
unzip -d feeds/glinet/dnsproxy feeds/glinet/dnsproxy.zip
rm feeds/glinet/dnsproxy.zip
sed -i "s/PKG_VERSION:=0.66.0/PKG_VERSION:=0.69.2/g" "feeds/glinet/dnsproxy/Makefile"
sed -i "s/PKG_HASH:=6928b109fb1080fec2aadc0cad20d0c08d13b5ff5db1a7c82ecfe200eec21326/PKG_HASH:=aa1cea0eea683bde017acbb30c09c96b24b30133e157e743666be900ad7560ea/g" "feeds/glinet/dnsproxy/Makefile"
