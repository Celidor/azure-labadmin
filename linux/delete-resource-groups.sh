#!/bin/bash
./login.sh
for i in `seq 1 14`;
do
  az group delete --name csa$i --yes
done
