#!/bin/sh

. ./config.sh

NUM_REQUESTS=1000
CONCURRENCY=10

ab \
    -n $NUM_REQUESTS \
    -c $CONCURRENCY \
    -H "X-Application-Id: $APP_ID" \
    -H "X-Application-Key: $APP_KEY" \
    $BASE_URL/1/$TENANT_ID/api/amqp-sample/consume



