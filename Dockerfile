FROM nginx:latest
LABEL ifeng fscarmen mack-a ygkkk
EXPOSE 80
USER root
ENV uuid 12e03a77-b4d7-430d-99c6-2d90a88a4bf9
COPY nginx.conf /etc/nginx/nginx.conf
COPY config.json ./
COPY entrypoint.sh ./
RUN chmod a+x ./entrypoint.sh
ENTRYPOINT [ "./entrypoint.sh" ]
