#!/bin/bash
cd $(dirname $(dirname $0)) || exit

mkdir media
cp ./etc/uwsgi.ini repo/app