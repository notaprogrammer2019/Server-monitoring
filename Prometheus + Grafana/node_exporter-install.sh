#!/bin/bash

wget https://github.com/prometheus/node_exporter/releases/download/v1.4.0/node_exporter-1.4.0.linux-amd64.tar.gz && tar xvf node_exporter-1.4.0.linux-amd64.tar.gz && rm node_exporter-1.4.0.linux-amd64.tar.gz && chmod +x $HOME/node_exporter-1.4.0.linux-amd64/node_exporter && mv $HOME/node_exporter-1.4.0.linux-amd64/node_exporter /usr/bin && rm -Rf $HOME/node_exporter-1.4.0.linux-amd64 && printf "EOF
[Unit]
Description=node_exporter
After=network-online.target
[Service]
User=$USER
ExecStart=/usr/bin/node_exporter
Restart=always
RestartSec=3
LimitNOFILE=65535
[Install]
WantedBy=multi-user.target
EOF"  > /etc/systemd/system/node-exported.service && systemctl daemon-reload && systemctl enable node-exported.service && systemctl restart node-exported.service
