#!/bin/bash

docker build -f euler2203/Dockerfile -t euler2203 .

docker build -f ubuntu2204/Dockerfile -t  lyasper/ubuntu2204 .

docker build -f kylin_sp2/Dockerfile  -t lyasper/kylinsp2 .

docker build -f rocky8/Dockerfile -t lyasper/rocky8 .
docker build -f rocky9/Dockerfile -t lyasper/rocky9 .
