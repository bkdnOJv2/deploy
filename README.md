# deploy
Deployment for bkdnOJ-v2
Refer from https://github.com/Ninjaclasher/dmoj-docker

### Cài đặt docker và docker-compose cho hệ thống
--

### Theo các bước này
```
mkdir ~/bkdnojv2
cd ~/bkdnojv2
git clone https://github.com/bkdnOJv2/deploy.git .
git checkout main-2.0
cd bkdnojv2
git submodule update --init --recursive
bash ./scripts/setup.sh
docker-compose build
docker-compose up -d api
bash scripts/migratedb.sh
bash scripts/initdata.sh
docker-compose up -d
```

Như vậy web đã lên ở 3000, API backend lên ở 8000. Nhưng tất cả đang la localhost.
Để deploy bạn cần phải edit docker-compose.yaml và các file trong `/env` để customize lại domain
