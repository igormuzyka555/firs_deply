FROM nginx:alpine

ENV PORT=80

# Копируем HTML
COPY index.html /usr/share/nginx/html/index.html

# Копируем шаблон nginx-конфига
COPY nginx.conf.template /etc/nginx/templates/default.conf.template

# nginx сам вызовет envsubst внутри: это работает, потому что
# nginx:alpine содержит поддержку запуска шаблонов через /docker-entrypoint.d/
