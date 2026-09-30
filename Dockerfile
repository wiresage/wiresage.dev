# Static site served by nginx. The unprivileged image runs as a non-root user
# and listens on 8080.
FROM nginxinc/nginx-unprivileged:1.30-alpine-slim

COPY nginx.conf /etc/nginx/conf.d/default.conf

# Only the site goes into the image: no design/, no repo metadata.
COPY index.html style.css /usr/share/nginx/html/
COPY assets/ /usr/share/nginx/html/assets/

EXPOSE 8080

HEALTHCHECK --interval=30s --timeout=3s --start-period=5s \
  CMD wget -q --spider http://127.0.0.1:8080/ || exit 1
