sed -i -e "s/docker/$(hostname)/g" /usr/share/nginx/html/index.html && nginx -g "daemon off;"
