.PHONY: up
up:
	docker compose up -d

.PHONY: down
down:
	docker compose down

# Clean up components' persistent data
.PHONY: clean
clean:
	rm -rf data
