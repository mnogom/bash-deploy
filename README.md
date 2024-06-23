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
### first run
1. Run without ssl
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
make run-ssl
```

# Roadmap
* Sentry
* Grafana
* Reload container by healthcheck
* Load files to volume ?