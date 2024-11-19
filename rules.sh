#!/bin/bash

cd /tmp
curl -LO https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geoip.dat
curl -LO https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geosite.dat
echo "Latest rules downloaded!"

rm -rf /usr/local/share/xray/*
mv geoip.dat geosite.dat /usr/local/share/xray/
echo "Rules successfully renewed!"

systemctl restart xray
echo "Xray successfully restarted!"
