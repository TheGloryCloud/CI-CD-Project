FROM nginx
 
WORKDIR /app

ADD image.tar.gz .

COPY index.html /usr/share/nginx/html/index.html
 
EXPOSE 80 443

LABEL title="The Glory Web"

CMD ["nginx", "-g", "daemon off;"]
