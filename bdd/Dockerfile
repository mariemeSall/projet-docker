FROM mysql:latest
COPY loona.sql /docker-entrypoint-initdb.d/init.sql
RUN chown -R mysql:mysql /docker-entrypoint-initdb.d/
