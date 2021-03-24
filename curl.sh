#!/bin/sh

curl "https://api.newrelic.com/v2/applications/$APP_ID/deployments.json" \
-H "X-Api-Key:$APP_KEY" -i \
-H "Content-Type: application/json" \
-d \
'{
  "deployment": {
    "revision": "commit: '$APP_VERSION'",
    "changelog": "cloudbuild URL: https://console.cloud.google.com/cloud-build/builds;region=global/'$BUILD_ID'?project='$PROJECT_ID'",
    "description": "CD Pipeline k8s",
    "user": "Cloud Build"
  }
}'