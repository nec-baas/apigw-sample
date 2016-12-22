#!/bin/sh

. ./config.sh

HOST=www.example.com

curl -v -X GET \
    -H "X-Application-Id: $APP_ID" \
    -H "X-Application-Key: $APP_KEY" \
    $BASE_URL/1/$TENANT_ID/api/http-sample/host/$HOST

