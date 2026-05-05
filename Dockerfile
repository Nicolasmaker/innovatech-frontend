# ETAPA 1: Construcción (requiere un servidor local para servir)
# Para desarrollo, se sirve con node-http-server o similar
# Para producción con Nginx, configuramos la entrega de archivos estáticos

FROM nginx:alpine

# Copiar el archivo de configuración de Nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Copiar los archivos del frontend
COPY index.html /usr/share/nginx/html/
COPY ./README.md /usr/share/nginx/html/

# Cambiar permisos (seguridad)
RUN chown -R nginx:nginx /usr/share/nginx/html && \
    chmod -R 755 /usr/share/nginx/html

# Exponer puerto 80
EXPOSE 80

# Iniciar Nginx
CMD ["nginx", "-g", "daemon off;"]
