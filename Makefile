run-local:
	@echo "=== 👾 Running local prod ==="
	docker compose --file docker-compose.local.yml up --build --force-recreate

pull:
	@echo "=== 🚨 Pull images ==="
	docker compose pull

run: pull
	@echo "=== 👾 Running prod ==="
	docker compose up -d --force-recreate

follow-logs:
	@echo "=== 📖 Show logs ==="
	docker compose logs --follow

stop:
	@echo "=== 🚫 Stopping ==="
	docker compose stop