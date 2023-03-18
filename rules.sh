#!/bin/bash

cd ~
wget https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geoip.dat
wget https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geosite.dat
echo "Latest rules downloaded!"

rm -rf /usr/local/share/xray/*
mv geoip.dat geosite.dat /usr/local/share/xray/
echo "Rules successfully renewed!"

systemctl restart xray
systemctl restart nginx
echo "xray and nginx successfully restarted!"
