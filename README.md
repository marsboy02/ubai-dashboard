# ubai-dashboard

grafana system for ubai HPC cluster

## quick start

### master node

- start docker compose

```bash
docker-compose up -d
```

### worker node

```bash
git clone https://github.com/marsboy02/ubai-dashboard/

./ubai-dashboard/node-exporter-init.sh
```

### append worker node in prometheus.yml

append worker node IP into **scrape_configs.static_configs.target**
