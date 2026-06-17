#!/bin/bash
cd $HOME/UTN-FRA_SO_Examenes/202406/docker/
docker build -t tizianovalentinborquez912/web1-borqueztizianolatest:latest .
docker push tizianovalentinborquez912/web1-borqueztizianolatest:latest
./run.sh
