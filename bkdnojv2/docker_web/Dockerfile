FROM node:16.20-alpine as builder

WORKDIR /app
COPY ./repo_fe/package.json ./
RUN npm install

ARG API_DOMAIN='http://localhost'
ENV REACT_APP_BACKEND_URL=${API_DOMAIN}
RUN echo REACT_APP_BACKEND_URL=${REACT_APP_BACKEND_URL} >> .env

ARG API_PORT=8000
ENV REACT_APP_BACKEND_PORT=${API_PORT}
RUN echo REACT_APP_BACKEND_PORT=${REACT_APP_BACKEND_PORT} >> .env

COPY ./repo_fe ./
RUN npm run build

FROM nginx:1.25
COPY --from=builder /app/build /app/www
COPY --from=builder /app/etc/nginx.conf /etc/nginx/conf.d/default.conf
CMD ["nginx", "-g", "daemon off;"]
