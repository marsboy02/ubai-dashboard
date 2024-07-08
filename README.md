# ubai-dashboard

- HPC cluster를 모니터링해주는 레포지토리입니다.
- node-exporter <-> prometheus <-> grafana를 사용합니다.

## quick start

### master node

```bash
# init
git clone https://github.com/marsboy02/ubai-dashboard/

cd ubai-dashboard

./node-exporter-init-all.sh
```

```bash
# start docker
docker-compose up -d
```

### worker node

```bash
git clone https://github.com/marsboy02/ubai-dashboard/

./ubai-dashboard/node-exporter-init.sh
```

### append worker node in prometheus.yml

append worker node IP into **scrape_configs.static_configs.target**
