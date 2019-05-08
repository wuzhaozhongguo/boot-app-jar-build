#!/usr/bin/env bash
#仓库命名空间domain/namespace
BUILD_IMAGE_REPO=""
#容器名称
BUILD_NAME="dev-boot-demo"
#版本
IMAGES_VERSION="latest"
#对外端口
BUILD_HOST_PORT=8080

BUILD_IMAGE_NAME="${BUILD_IMAGE_REPO}/${BUILD_NAME}"
docker run \
-d \
-p ${BUILD_HOST_PORT}:8080 \
--name ${BUILD_NAME} \
${BUILD_IMAGE_NAME}