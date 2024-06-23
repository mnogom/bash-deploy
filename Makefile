run-local:
	@echo "=== 👾 Running local prod ==="
	docker compose --file docker-compose.local.yml up --build --force-recreate

pull:
	@echo "=== 🚨 Pull images ==="
	docker compose pull

run: pull
	@echo "=== 👾 Running prod ==="
	# docker compose up -d --force-recreate
	docker compose --file docker-compose.tmp.yml up -d --build --force-recreate


follow-logs:
	@echo "=== 📖 Show logs ==="
	docker compose logs --follow

stop:
	@echo "=== 🚫 Stopping ==="
	docker compose stop

reg-ssl:
	@echo "=== 🔐 Setup SSL ==="
	docker compose --file docker-compose.tmp.yml run --rm certbot  certonly --webroot -w /var/www/certbot --force-renewal --email freidlin@ya.ru -d freidl.in --agree-tos

renew-ssl:
	@echo "=== 🔑 Renew SSL ==="
	docker-compose run --rm certbot renew
