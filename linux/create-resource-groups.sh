#!/bin/bash
./login.sh
for i in `seq 1 14`;
do
  az group create --name csa$i --location "UK South"
  az role assignment create --assignee  csa$i@celidor.net --role Contributor --resource-group csa$i
done
