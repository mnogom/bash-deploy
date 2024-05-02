### Project structure
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

### Run

#### local
```bash
make run-local
```

#### vps
```bash
make stop
make pull
make run
```

### Roadmap
* Sentry
* Grafana?