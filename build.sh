#!/bin/sh
docker buildx build --platform linux/amd64,linux/arm64 -t bootswithdefer/rpmbuild-al2022:latest --push .
