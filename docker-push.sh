#!/usr/bin/env bash
#仓库命名空间domain/namespace
BUILD_IMAGE_REPO=""
#容器名称
BUILD_NAME="dev-boot-demo"
#版本
BUILD_VERSION="latest"

BUILD_IMAGE_NAME="${BUILD_IMAGE_REPO}/${BUILD_NAME}"

docker push ${BUILD_IMAGE_NAME}:${BUILD_VERSION}