rm -rf feeds/packages/net/dnsproxy
#curl -L https://alist-home.320888.xyz:2096/d/Oracle/App/dnsproxy-0.62.zip -o feeds/packages/net/dnsproxy.zip
#curl -L https://alist.320888.xyz/d/Oracle-Chuncheon/APP/dnsproxy-0.52.0.zip -o feeds/packages/net/dnsproxy.zip
curl -L https://alist.320888.xyz/d/Oracle-Chuncheon/APP/dnsproxy-0.62.zip -o feeds/packages/net/dnsproxy.zip
unzip -d feeds/packages/net/dnsproxy feeds/packages/net/dnsproxy.zip
rm feeds/packages/net/dnsproxy.zip
rm -rf feeds/packages/lang/golang
git clone https://github.com/sbwml/packages_lang_golang -b 22.x feeds/packages/lang/golang
