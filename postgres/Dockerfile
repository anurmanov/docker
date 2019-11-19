FROM postgres:10.10
MAINTAINER alisher.nurmanov@inbox.ru
RUN apt-get update && apt-get install -y && apt-get install -y postgresql-plpython3-10 && apt-get install -y nano
#ENV LANG ru_RU.utf8
#ENV LC_TYPE ru_RU.utf8
#ENV PGDATA /var/lib/postgresql/data
EXPOSE 5432/tcp
USER postgres
COPY ./postgresql.conf /tmp
COPY ./pg_hba.conf /tmp
