#!/bin/bash

set -e

if [ -h "$SCRIPT_NAME" ]; then
  SCRIPT_NAME="$(readlink "$SCRIPT_NAME")"
fi

cd "$(dirname "$SCRIPT_NAME")"

if [ "$#" -ne 1 ]; then
  echo "usage: $0 <version>"
  exit 2
fi

VERSION="$1"
SCRIPT_NAME="${BASH_SOURCE[0]}"
IMAGE_TAG="lightbend-docker-registry.bintray.io/conductr/oci-in-docker:$VERSION"

echo -n "Building..."
IMAGE_ID="$(docker build -q -t "$IMAGE_TAG" .)"
echo "done."
echo
echo "Image ID:  $IMAGE_ID"
echo "Image Tag: $IMAGE_TAG"
echo
echo "Upload to bintray with: docker push $IMAGE_TAG"
