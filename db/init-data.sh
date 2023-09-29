#!/usr/bin/env sh


HOST="db"
DATA_SRC=/docker-entrypoint-initdb.d
hold=/tmp/hold.sql

/cockroach/cockroach.sh init --host "$HOST" --insecure

# /cockroach/cockroach.sh user set testuser --host "$HOST" --insecure

for sql in `ls ${DATA_SRC}/*.sql`; do
   cat $sql >> $hold
done

cat $hold | /cockroach/cockroach.sh sql --host $HOST --insecure

exit 0
