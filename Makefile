COMPOSE_NAME = monitoring

.PHONY: up
up:
	docker compose -p $(COMPOSE_NAME) up -d

.PHONY: down
down:
	docker compose -p $(COMPOSE_NAME) down

# Clean up services' persistent data
.PHONY: clean
clean:
	rm -rf data
