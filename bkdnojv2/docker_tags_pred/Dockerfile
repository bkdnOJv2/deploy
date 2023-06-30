FROM python:3.9-bullseye

COPY repo_tags_pred/cp-tags-classifier/app/ /app/
WORKDIR /app/
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
ENTRYPOINT python main.py