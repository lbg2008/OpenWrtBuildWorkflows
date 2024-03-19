#rm -rf feeds/glinet/dnsproxy
#rm -rf feeds/packages/net/xray-core
#curl -L https://alist.320888.xyz/d/Oracle-Chuncheon/APP/dnsproxy-0.62.zip -o feeds/glinet/dnsproxy.zip
#unzip -d feeds/packages/net/dnsproxy feeds/glinet/dnsproxy.zip
#rm feeds/glinet/dnsproxy.zip
#./scripts/feeds update -a &&./scripts/feeds install -a
sed -i 's/ +libopenssl-legacy//g' feeds/helloworld/shadowsocksr-libev/Makefile
#rm -rf feeds/gl_feed_common/golang
#git clone https://github.com/sbwml/packages_lang_golang -b 22.x feeds/gl_feed_common/golang
#rm -rf feeds/packages/lang/golang
#git clone https://github.com/sbwml/packages_lang_golang -b 22.x feeds/packages/lang/golang
