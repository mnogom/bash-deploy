# Project structure
```bash
.
├── Makefile
├── README.md
├── bash-backend
│     ├── .env # (create and fill for local)
│     ├── Dockerfile
│     ├── main.py
│     ├── src
│     └── ...
├── bash-frontend
│     ├── Dockerfile
│     ├── nginx
│     │     ├── default.conf
│     │     └── dist
│     └── ...
├── bash-volume
│     └── ...
├── docker-compose.yml
├── .env # (create and fill for vps)
└── ...
```

# Run

## local
```bash
make run-local
```

## vps (pull & run)
0. Create .env **and fill**
```
cp .env.example .env
```
1. Run without ssl (for first run)
```
make run-no-ssl
```
2. Create certificates
```
make create-cert
```
3. Stop and run ssl config
```
make stop
make run
```
4. Update ssl cert
```
make renew-cert
```

# Roadmap
* Sentry
* Grafana
* Reload container by healthcheck
* Load files to volume ?
* Automate renew certificate