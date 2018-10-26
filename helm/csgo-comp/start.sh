#!/bin/sh
for i in 1 2 3 4 5 6 7 8 
do
echo server_num: $i > server_num.yaml
helm install --name csgocomp-$i -f  server_num.yaml .
#helm delete --purge csgocomp-$i
done