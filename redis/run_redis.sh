#!/bin/bash
docker run -d -v $(pwd)/log:/log -v $(pwd)/data:/data -p 6379:6379 --name msc_redis redis:medsmartcom
