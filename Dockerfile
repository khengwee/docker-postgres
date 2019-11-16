FROM library/postgres:9.6
ENV POSTGRES_USER docker
ENV POSTGRES_PASSWORD password
ENV POSTGRES_DB docker
COPY init.sql /docker-entrypoint-initdb.d/
