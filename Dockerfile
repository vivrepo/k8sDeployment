# Use the official NGINX image
FROM nginx:latest

WORKDIR /usr/share/nginx/html

RUN rm -rf ./*

COPY index.html ./

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]