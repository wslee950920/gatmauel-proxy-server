FROM nginx:1.13-alpine

COPY ./dev/etc/nginx/snippets/ /etc/nginx/snippets/
COPY ./dev/etc/nginx/conf.d/ /etc/nginx/conf.d/
COPY ./dev/etc/ssl/ /etc/ssl/

EXPOSE 80
EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
