#!/bin/bash
cd $(dirname $(dirname $0)) || exit

mkdir media
mv ./bkdnojv2/etc/uwsgi.ini repo/