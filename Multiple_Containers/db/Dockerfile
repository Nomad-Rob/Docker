FROM postgres:12

ENV POSTGRES_DB=appdb
ENV POSTGRES_USER=user
ENV POSTGRES_PASSWORD=password

COPY init.sql /docker-entrypoint-initdb.d/
