#!/bin/bash
export COMPOSE_EXEC_FLAGS=-T
echo "from django.contrib.auth import get_user_model; User = get_user_model(); User.objects.create_superuser('admin', 'admin@bkdnojv2.com', 'admin')" | bash ./scripts/manage.sh shell
bash ./scripts/manage.sh loaddata lang_small
echo "from judger.models import Judge; Judge.objects.create(name='localjudge', auth_key='localkey')" | bash ./scripts/manage.sh shell