#!/bin/sh

. ./config.sh

curl -v -X POST \
    -H "X-Application-Id: $APP_ID" \
    -H "X-Application-Key: $APP_KEY" \
    -H "Content-Type: text/plain" \
    -d "Hello world!" \
    $BASE_URL/1/$TENANT_ID/api/amqp-sample/publish


