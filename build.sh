#!/bin/bash

docker build -f euler2203/Dockerfile -t euler2203 .

docker build -f ubuntu2204/Dockerfile -t ubuntu2204 .

docker build -f kylin_sp2/Dockerfile  -t kylinsp2 .

