#!/usr/bin/env bash
#仓库命名空间domain/namespace
BUILD_IMAGE_REPO=""
#镜像名称
BUILD_NAME="dev-boot-demo"
#宿主机构建产物目录
BUILD_PACKAGE_BASE_PATH="/var/lib/boot-build"
#构建产物唯一主键
BUILD_ID="dev-boot-demo"
#版本号
BUILD_VERSION="latest"
BUILD_EXPOSE=8080

BUILD_IMAGE_NAME="${BUILD_IMAGE_REPO}/${BUILD_NAME}"
mkdir build
cp ${BUILD_PACKAGE_BASE_PATH}/${BUILD_ID}/app.jar ./build/
docker build \
--build-arg BUILD_EXPOSE="${BUILD_EXPOSE}" \
-t="${BUILD_IMAGE_NAME}:${BUILD_VERSION}" .