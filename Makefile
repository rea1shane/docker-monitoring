COMPOSE_NAME = monitoring

# HOST_IP command is macOS only. Linux should be `hostname -I | awk '{print $1}'`
.PHONY: env
env:
	@rm -f .env
	@echo "HOST_NAME=$$(hostname)" >> .env
	@echo "HOST_IP=$$(ipconfig getifaddr en0)" >> .env
	@cat .env

.PHONY: up
up: env
	docker compose -p $(COMPOSE_NAME) up -d

.PHONY: up-managers
up-managers: env
	docker compose -p $(COMPOSE_NAME) up -d \
		prometheus \
		grafana \
		pushgateway \
		alertmanager \
		blackbox_exporter \
		loki \
		minio

.PHONY: up-agents
up-agents: env
	docker compose -p $(COMPOSE_NAME) up -d \
		node_exporter \
		promtail

.PHONY: down
down:
	docker compose -p $(COMPOSE_NAME) down

# Clean up services' persistent data
.PHONY: clean
clean:
	rm -rf data
