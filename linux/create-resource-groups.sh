#!/bin/bash
DOMAIN="celidor.net"
./login.sh
for i in `seq 1 20`;
do
  az group create --name csa$i --location "West Europe"
  az role assignment create --assignee  csa$i@$DOMAIN --role Contributor --resource-group csa$i
  echo "resource group csa$i created"
done
