FROM postgres

ENV POSTGRES_PASSWORD=postgres

COPY ./create /docker-entrypoint-initdb.d

EXPOSE 5432