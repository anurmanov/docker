#!bin/bash
cp /tmp/postgresql.conf /var/lib/postgresql/data
cp /tmp/pg_hba.conf /var/lib/postgresql/data
cd /docker-entrypoint-initdb.d
psql -c "create database geolite2_maxmind" postgres
gunzip -k ./geolite.psql.gz
psql -f /docker-entrypoint-initdb.d/geolite.psql geolite2_maxmind
rm geolite.psql
