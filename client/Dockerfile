FROM nginx
COPY index.html /usr/share/nginx/html
COPY docker-entrypoint.sh /
WORKDIR /
RUN chmod +x docker-entrypoint.sh
# # # COPY run.sh /tmp
# # # RUN chmod +x /tmp/run.sh
# # #  WORKDIR /tmp
ENTRYPOINT ["bash","docker-entrypoint.sh"]
