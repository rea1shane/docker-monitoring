# Docker monitoring

Includes the following services:

| Service           | Port | Repository                                                | Config example                                                                                                    | Documentation                                                    |
| ----------------- | ---- | --------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------- |
| Prometheus        | 9090 | [GitHub](https://github.com/prometheus/prometheus)        | [`prometheus.yml`](https://github.com/prometheus/prometheus/raw/main/documentation/examples/prometheus.yml)       | [Link](https://prometheus.io/docs/introduction/overview/)        |
| Grafana           | 3000 | [GitHub](https://github.com/grafana/grafana)              | [`sample.ini`](https://github.com/grafana/grafana/raw/main/conf/sample.ini)                                       | [Link](https://grafana.com/docs/grafana/latest/)                 |
| Pushgateway       | 9091 | [GitHub](https://github.com/prometheus/pushgateway)       | -                                                                                                                 | [Link](https://prometheus.io/docs/practices/pushing/)            |
| Alertmanager      | 9093 | [GitHub](https://github.com/prometheus/alertmanager)      | [`alertmanager.yml`](https://raw.githubusercontent.com/prometheus/alertmanager/main/examples/ha/alertmanager.yml) | [Link](https://prometheus.io/docs/alerting/latest/alertmanager/) |
| Node exporter     | 9100 | [GitHub](https://github.com/prometheus/node_exporter)     | -                                                                                                                 | -                                                                |
| Blackbox exporter | 9115 | [GitHub](https://github.com/prometheus/blackbox_exporter) | [`blackbox.yml`](https://raw.githubusercontent.com/prometheus/blackbox_exporter/master/blackbox.yml)              | -                                                                |

Some services will store data persistently in the `data` folder. Run `make clean` to clean them up.
