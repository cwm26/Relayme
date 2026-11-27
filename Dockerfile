# Serves the RelayMe static site on Railway (or any container host).
# Railway sets PORT; nginx's template step fills it into the config at start.
FROM nginx:1.27-alpine

ENV PORT=8080
COPY nginx.conf.template /etc/nginx/templates/default.conf.template
COPY . /usr/share/nginx/html
RUN rm -f /usr/share/nginx/html/Dockerfile /usr/share/nginx/html/nginx.conf.template /usr/share/nginx/html/.dockerignore

EXPOSE 8080
