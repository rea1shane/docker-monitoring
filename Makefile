COMPOSE_NAME = monitoring

# HOST_IP command is macOS only. Linux should be `hostname -I | awk '{print $1}'`
.PHONY: env
env:
	rm -f .env
	echo "HOST_NAME=$$(hostname)" >> .env
	echo "HOST_IP=$$(ipconfig getifaddr en0)" >> .env

.PHONY: up
up: env
	docker compose -p $(COMPOSE_NAME) up -d

.PHONY: down
down:
	docker compose -p $(COMPOSE_NAME) down

# Clean up services' persistent data
.PHONY: clean
clean:
	rm -rf data
