#!/bin/bash
./login.sh
for i in `seq 1 20`;
do
  echo "deleting resource group csa$i ..."
  az group delete --name csa$i --yes
  echo "resource group csa$i deleted"
done
