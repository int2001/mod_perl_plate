FROM motemen/mod_perl:5.36.0-2.4.58-2.0.13
COPY httpd.conf /usr/local/apache2/conf/httpd.conf
RUN apt-get update -y && apt-get install -y wget make build-essential libmariadb-dev-compat libmariadb-dev
RUN cpan -iT DBI DBD::MariaDB
EXPOSE 80
CMD ["httpd-foreground"]
