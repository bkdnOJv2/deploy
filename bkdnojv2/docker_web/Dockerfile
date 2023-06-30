FROM node:16.20-alpine as builder

WORKDIR /app
COPY ./repo_fe/package.json ./
RUN npm install
COPY ./repo_fe ./
RUN npm run build

FROM nginx:1.25
COPY --from=builder /app/build /app/www
COPY --from=builder /app/etc/nginx.conf /etc/nginx/conf.d/default.conf
CMD ["nginx", "-g", "daemon off;"]
