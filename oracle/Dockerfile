FROM motemen/mod_perl:5.36.0-2.4.58-2.0.13
COPY httpd.conf /usr/local/apache2/conf/httpd.conf
RUN apt-get update -y && apt-get install -y wget libaio1 make build-essential alien && \
 wget https://download.oracle.com/otn_software/linux/instantclient/185000/oracle-instantclient18.5-basiclite-18.5.0.0.0-3.x86_64.rpm && \
    wget https://download.oracle.com/otn_software/linux/instantclient/185000/oracle-instantclient18.5-devel-18.5.0.0.0-3.x86_64.rpm && \
    alien -i oracle-instantclient18.5-basiclite-18.5.0.0.0-3.x86_64.rpm && \
    alien -i oracle-instantclient18.5-devel-18.5.0.0.0-3.x86_64.rpm
RUN cpan -iT DBI DBD::Oracle
ENV LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib/oracle/18.5/client64/lib/
EXPOSE 80
CMD ["httpd-foreground"]
