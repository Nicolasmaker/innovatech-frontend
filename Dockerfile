# ETAPA 1: Servidor web (Nginx)
FROM nginx:alpine

# Copiamos nuestro HTML a la carpeta pública de Nginx
COPY index.html /usr/share/nginx/html/

# Creamos un usuario no root y le damos permisos a las carpetas de Nginx (Seguridad)
RUN adduser -D -u 1001 appuser \
    && chown -R appuser:appuser /usr/share/nginx/html \
    && chown -R appuser:appuser /var/cache/nginx \
    && chown -R appuser:appuser /var/log/nginx \
    && chown -R appuser:appuser /etc/nginx/conf.d \
    && touch /var/run/nginx.pid \
    && chown -R appuser:appuser /var/run/nginx.pid

USER appuser

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
