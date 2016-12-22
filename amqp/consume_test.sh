#!/bin/sh

. ./config.sh

curl -v -X GET \
    -H "X-Application-Id: $APP_ID" \
    -H "X-Application-Key: $APP_KEY" \
    $BASE_URL/1/$TENANT_ID/api/amqp-sample/consume



