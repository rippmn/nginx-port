FROM launcher.gcr.io/google/debian9:latest
RUN apt-get update && apt-get install -y \
    nginx
RUN rm -rf /etc/nginx/sites-enabled/default
COPY default /etc/nginx/sites-enabled/default
COPY run_nginx.sh ./run_nginx.sh
ENTRYPOINT ["bash", "./run_nginx.sh"]
