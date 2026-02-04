#!/bin/bash
# deploy.sh
# Deploy site files to S3 and invalidate CloudFront
#
# Usage: ./deploy.sh

set -e

SITE_DIR="/Users/sl/code/agency-live/site"
S3_BUCKET="s3://agentsy-live-static-site"
CF_DISTRIBUTION="ELKE3AV1JMB2G"
AWS_PROFILE="open-prose"

# Files to deploy (path relative to SITE_DIR -> S3 key)
FILES=(
    "index.txt:index.txt"
    "top.txt:top.txt"
    "404.txt:404.txt"
)

echo "Deploying site to agentsy.live..."

INVALIDATION_PATHS=""

for entry in "${FILES[@]}"; do
    LOCAL="${entry%%:*}"
    REMOTE="${entry##*:}"
    FILE_PATH="$SITE_DIR/$LOCAL"

    if [ -f "$FILE_PATH" ]; then
        echo "Uploading $LOCAL -> $REMOTE"
        aws s3 cp "$FILE_PATH" "$S3_BUCKET/$REMOTE" \
            --profile "$AWS_PROFILE" \
            --content-type "text/plain; charset=utf-8"
        INVALIDATION_PATHS="$INVALIDATION_PATHS /$REMOTE"
    else
        echo "Skipping $LOCAL (not found)"
    fi
done

# Invalidate CloudFront
echo "Invalidating CloudFront cache..."
INVALIDATION_ID=$(aws cloudfront create-invalidation \
    --distribution-id "$CF_DISTRIBUTION" \
    --paths $INVALIDATION_PATHS \
    --profile "$AWS_PROFILE" \
    --query 'Invalidation.Id' \
    --output text)

echo ""
echo "Done."
echo "Invalidation ID: $INVALIDATION_ID"
echo "Live at: https://agentsy.live"
