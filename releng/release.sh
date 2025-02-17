#!/usr/bin/env bash

set -euo pipefail


# Required parameters for invoking this script:
# - CIRRUS_BUILD_ID to download the P2 repository (Eclipse Update Site)
# - CIRRUS_BUILD_VERSION which is also the version that was released, required for downloading the
#                        artifact and on binaries.sonarsource.com
# - S3_BUCKET defaults to the AWS S3 bucket where "https://binaries.sonarsource.com" is hosted on
: "${CIRRUS_BUILD_ID?}" "${RELEASE_VERSION?}"
: "${S3_BUCKET:=downloads-cdn-eu-central-1-prod}"


# The AWS S3 bucket keys we require to upload the P2 repository (Eclipse Update Site) to 
# https://binaries.sonarsource.com/$ROOT_BUCKET_KEY/$RELEASE_VERSION
ROOT_BUCKET_KEY="SonarSource-RedDeer-fork"
VERSION_BUCKET_KEY="$ROOT_BUCKET_KEY/$RELEASE_VERSION"


# Move to script directory
SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
pushd "${SCRIPT_DIR}/" >/dev/null


# Create temporary directory for the downloaded P2 repository
P2_REPOSITORY_SITE_DIR=$(mktemp -d -p "$PWD" -t tmp.XXXXXXXX)
trap 'rm -rf "$P2_REPOSITORY_SITE_DIR" "$P2_REPOSITORY_SITE_DIR".zip' EXIT


# Download the latest build artifact from Cirrus CI (no token required as the repository is public)
curl --fail --silent --show-error --location \
  "https://api.cirrus-ci.com/v1/artifact/build/$CIRRUS_BUILD_ID/build/p2/site/target/org.eclipse.reddeer.site-$CIRRUS_BUILD_VERSION.zip" \
  -o "$P2_REPOSITORY_SITE_DIR".zip
mkdir -p "$P2_REPOSITORY_SITE_DIR/$RELEASE_VERSION"
unzip -q "$P2_REPOSITORY_SITE_DIR".zip -d "$P2_REPOSITORY_SITE_DIR/$RELEASE_VERSION"


# Upload the build artifact in addition to the already existing elements
echo "Upload from $P2_REPOSITORY_SITE_DIR to s3://$S3_BUCKET/$ROOT_BUCKET_KEY/..."
aws s3 sync "$@" --delete "$P2_REPOSITORY_SITE_DIR" "s3://$S3_BUCKET/$ROOT_BUCKET_KEY/"


# Invalid the CloudFront distribution (refresh the S3 bucket to show everything)
DISTRIBUTION_ID=$(aws cloudfront list-distributions --query "DistributionList.Items[*].{id:Id,origin:Origins.Items[].{DomainName:DomainName}[?starts_with(DomainName,'$S3_BUCKET')]}[?not_null(origin)].id" --output text)
echo "Create CloudFront invalidation for distribution $DISTRIBUTION_ID"
aws cloudfront create-invalidation --distribution-id "$DISTRIBUTION_ID" --paths "/$ROOT_BUCKET_KEY/*"
echo "SonarSource RedDeer fork version $RELEASE_VERSION published: https://binaries.sonarsource.com/?prefix=$VERSION_BUCKET_KEY/"


# Move back from script directory
popd >/dev/null
