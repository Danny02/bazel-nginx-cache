FROM nginx:stable

RUN apt-get update && apt-get -y install nginx-extras && rm -rf /var/lib/apt/lists/*

COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 80

RUN mkdir -P /cache/cache/ac /cache/cache/cas
RUN chmod -R 0777 /cache