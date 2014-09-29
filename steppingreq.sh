#!/bin/bash

# 1 #

SAVEIFS=$IFS;
IFS=$(echo -en "\n\b");
for i in `cat /home/mos/debrpm/nova/requirements.txt | grep -i -P -o '^[a-z.-]+'`;
do echo -e "++++++++++++++++++++++\n$i\n++++++++++++++++++++++";
echo -e '--------\nUbuntu:\n--------';
grep -i $i control;
echo -e '--------\nCentos:\n--------';
grep -i $i /home/mos/debrpm/nova-build/rpm/SPECS/openstack-nova.spec;
read;
done;
IFS=$SAVEIFS

## 2 ##

for i in `cat requirements.txt|egrep -v '\#'`;
do echo $i;
read;
done

### 3 ###
./work.sh makecache
./work.sh search cache boto
