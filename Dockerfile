FROM nginx:1.13-alpine

COPY ./etc/nginx/snippets/ /etc/nginx/snippets/
COPY ./etc/nginx/conf.d/ /etc/nginx/conf.d/
COPY ./etc/ssl/ /etc/ssl/

EXPOSE 80
EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
