include .env

# ======================================================
# LOCAL RUN
# ======================================================

run-local:
	@echo "=== 👾 Running local prod ==="
	docker compose --file docker-compose.local.yml up --build --force-recreate

# ======================================================
# RUN WITHOUT SSL
# ======================================================

pull-no-ssl:
	@echo "=== 🚨 Pull images ==="
	docker compose --file docker-compose.no-ssl.yml pull

run-no-ssl: pull-no-ssl
	@echo "=== 👾 Running prod ==="
	docker compose --file docker-compose.no-ssl.yml up -d --force-recreate

# ======================================================
# RUN WITH SSL
# ======================================================

pull:
	docker compose pull

run: pull
	@echo "=== 👾 Running prod ==="
	docker compose up -d --force-recreate

# ======================================================
# COMMON
# ======================================================

stop:
	@echo "=== 🚫 Stopping ==="
	docker compose stop

log:
	@echo "=== 📖 Show logs ==="
	docker compose logs --follow

# ======================================================
# SSL
# ======================================================

create-cert:
	@echo "=== 🔐 Setup SSL ==="
	docker run --rm \
	--volume ./certbot/www/:/var/www/certbot \
	--volume ./certbot/conf/:/etc/letsencrypt \
	certbot/certbot \
	certonly --webroot -w /var/www/certbot --force-renewal --email $(DOMAIN_EMAIL) -d $(DOMAIN_URL) --agree-tos

renew-cert:
	@echo "=== 🔑 Renew SSL ==="
	docker run --rm \
	--volume ./certbot/www/:/var/www/certbot \
	--volume ./certbot/conf/:/etc/letsencrypt \
	certbot/certbot \
	renew
