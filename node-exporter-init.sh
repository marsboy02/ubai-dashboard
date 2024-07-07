# download tar
wget https://github.com/prometheus/node_exporter/releases/download/v1.8.1/node_exporter-1.8.1.linux-amd64.tar.gz

tar xvfz node_exporter-1.8.1.linux-amd64.tar.gz

mv node_exporter-1.8.1.linux-amd64/node_exporter /usr/local/bin/

# insert script
cat <<EOF > /etc/systemd/system/node_exporter.service
[Unit]
Description=Node Exporter
Wants=network-online.target
After=network-online.target

[Service]
User=root
Group=root
Type=simple
ExecStart=/usr/local/bin/node_exporter

[Install]
WantedBy=multi-user.target
EOF

# always
systemctl enable node_exporter.service

# start 
systemctl start node_exporter.service

# check status
systemctl status node_exporter.service