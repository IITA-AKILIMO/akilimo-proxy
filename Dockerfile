FROM kong
ENV KONG_NGINX_HTTP_INCLUDE /usr/local/kong/server.kong.conf
#RUN adduser -D kong
RUN chmod 777 /usr/local/kong
USER kong
COPY config/server.kong.conf ${KONG_NGINX_HTTP_INCLUDE}
CMD kong start --run-migrations
EXPOSE 8000 8095 8001