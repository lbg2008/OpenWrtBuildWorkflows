rm -rf feeds/packages/net/xray-core
rm -rf feeds/fancontrol/gl-sdk4-fan
rm -rf feeds/fancontrol/fancontrol
rm -rf feeds/fancontrol/images
rm -rf feeds/fancontrol/luci-app-fancontrol
./scripts/feeds update -a &&./scripts/feeds install -a
sed -i 's/ +libopenssl-legacy//g' feeds/helloworld/shadowsocksr-libev/Makefile
rm -rf feeds/packages/lang/golang
git clone https://github.com/lbg2008/packages_lang_golang -b 22.x feeds/packages/lang/golang
rm -rf feeds/fancontrol/dnsproxy
#curl -L https://alist-home.320888.xyz:2096/d/Oracle/App/dnsproxy-0.62.zip -o feeds/fancontrol/dnsproxy.zip
#curl -L https://alist.320888.xyz/d/Oracle-Chuncheon/APP/dnsproxy-0.52.0.zip -o feeds/fancontrol/dnsproxy.zip
curl -L https://alist.320888.xyz/d/Oracle-Chuncheon/APP/dnsproxy-0.62.zip -o feeds/fancontrol/dnsproxy.zip
unzip -d feeds/fancontrol/dnsproxy feeds/glinet/dnsproxy.zip
rm feeds/fancontrol/dnsproxy.zip
