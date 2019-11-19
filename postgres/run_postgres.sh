#!/bin/bash
docker run -d --name msc_postgres -p 5432:5432 -v $(pwd)/init:/docker-entrypoint-initdb.d --mount type=volume,source=msc_postgres_pgdata,destination=/var/lib/postgresql/data postgres:medsmartcom
