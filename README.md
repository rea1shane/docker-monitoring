# Docker monitoring

Includes the following services:

| Service           | Exposed port | Repository                                                | Config example                                                                                                             | Documentation                                                    |
| ----------------- | ------------ | --------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------- |
| Prometheus        | `9090`       | [GitHub](https://github.com/prometheus/prometheus)        | [`prometheus.yml`](https://github.com/prometheus/prometheus/raw/main/documentation/examples/prometheus.yml)                | [Link](https://prometheus.io/docs/introduction/overview/)        |
| Grafana           | `3000`       | [GitHub](https://github.com/grafana/grafana)              | [`sample.ini`](https://github.com/grafana/grafana/raw/main/conf/sample.ini)                                                | [Link](https://grafana.com/docs/grafana/latest/)                 |
| Pushgateway       | `9091`       | [GitHub](https://github.com/prometheus/pushgateway)       | -                                                                                                                          | [Link](https://prometheus.io/docs/practices/pushing/)            |
| Alertmanager      | `9093`       | [GitHub](https://github.com/prometheus/alertmanager)      | [`alertmanager.yml`](https://github.com/prometheus/alertmanager/raw/main/examples/ha/alertmanager.yml)                     | [Link](https://prometheus.io/docs/alerting/latest/alertmanager/) |
| Node exporter     | `9100`       | [GitHub](https://github.com/prometheus/node_exporter)     | -                                                                                                                          | -                                                                |
| Blackbox exporter | `9115`       | [GitHub](https://github.com/prometheus/blackbox_exporter) | [`blackbox.yml`](https://github.com/prometheus/blackbox_exporter/raw/master/blackbox.yml)                                  | -                                                                |
| Loki              | `3100`       | [GitHub](https://github.com/grafana/loki)                 | [`loki-docker-config.yaml`](https://github.com/grafana/loki/raw/main/cmd/loki/loki-docker-config.yaml)                     | [Link](https://grafana.com/docs/loki/latest/)                    |
| Promtail          | -            | Included in [Loki](https://github.com/grafana/loki)       | [`promtail-docker-config.yaml`](https://github.com/grafana/loki/raw/main/clients/cmd/promtail/promtail-docker-config.yaml) | [Link](https://grafana.com/docs/loki/latest/send-data/promtail/) |
| cAdvisor          | `8080`       | [GitHub](https://github.com/google/cadvisor)              | -                                                                                                                          | [Link](https://github.com/google/cadvisor/tree/master/docs)      |

Some services will store data persistently in the `data` folder. Run `make clean` to clean them up.
