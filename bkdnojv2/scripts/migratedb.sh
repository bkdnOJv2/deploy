#!/bin/bash
cd $(dirname $(dirname $0)) || exit

docker-compose exec $COMPOSE_EXEC_FLAGS api python3 manage.py migrate $@