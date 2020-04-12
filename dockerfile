FROM nginx:latest
WORKDIR /app
COPY nginx.conf /etc/nginx/nginx.conf
COPY app.nginx.conf /etc/nginx/app.nginx.conf
USER root
COPY build /usr/share/nginx/html/app
RUN chown -R nginx:nginx /usr/share/nginx/html/app
EXPOSE 8080