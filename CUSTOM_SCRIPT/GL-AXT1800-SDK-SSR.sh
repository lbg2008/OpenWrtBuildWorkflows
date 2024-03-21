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
