sed -i "/helloworld/d" "feeds.conf.default"
echo "src-git helloworld https://github.com/lbg2008/helloworld.git;main" >> "feeds.conf.default"
echo 'src-git fancontrol https://github.com/lbg2008/fancontrol.git' >>feeds.conf.default
