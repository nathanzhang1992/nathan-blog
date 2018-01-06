FROM nginx

WORKDIR /webapp
COPY _site/  /webapp
ADD nginx.conf /etc/nginx/

EXPOSE 8000

CMD ["nginx", "-g", "daemon off;"]