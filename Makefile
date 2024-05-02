run-local:
	@echo "=== 👾 Running local prod ==="
	docker compose --file docker-compose.local.yml up --build --force-recreate

run:
	@echo "=== 👾 Running vps ==="
	docker compose --file docker-compose.yml up --build

pull:
	@echo "=== 🚨 Pull images ==="
	docker compose pull

run:
	@echo "=== 👾 Running prod ==="
	docker compose up -d --force-recreate

follow-logs:
	@echo "=== 📖 Show logs ==="
	docker compose logs --follow

stop:
	@echo "=== 🚫 Stopping ==="
	docker compose stop