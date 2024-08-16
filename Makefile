.PHONY: up
up:
	docker compose up -d

.PHONY: down
down:
	docker compose down

# Clean up services' persistent data
.PHONY: clean
clean:
	rm -rf data
