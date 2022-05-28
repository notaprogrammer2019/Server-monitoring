#!/bin/bash

wget https://github.com/prometheus/node_exporter/releases/download/v1.3.1/node_exporter-1.3.1.linux-amd64.tar.gz && tar xvf node_exporter-1.3.1.linux-amd64.tar.gz && rm node_exporter-1.3.1.linux-amd64.tar.gz && chmod +x $HOME/node_exporter-1.3.1.linux-amd64/node_exporter && mv $HOME/node_exporter-1.3.1.linux-amd64/node_exporter /usr/bin && rm -Rf $HOME/node_exporter-1.3.1.linux-amd64
