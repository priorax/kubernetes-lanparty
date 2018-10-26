#!/bin/sh
for i in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16

do
echo server_num: $i > server_num.yaml
helm install --name factorio$i -f server_num.yaml .
#helm del --purge factorio$i
#helm upgrade factorio$i -f server_num.yaml .
done

