# 构建应用镜像
<pre>
    <code>
        docker build --build-arg BUILD_ID="dev-boot-demo" -t="xxxx/boot-demo" .
    </code>
</pre>

# shell
#### build-app.sh
构建app镜像
#### docker-push.sh
推送app镜像到远程仓库
#### run-app.sh
运行app镜像

    

BUILD_ID 是构建id，具有唯一性，类似jenkins的JOB_NAME，在/var/lib/boot-build/目录下生成BUILD_ID.jar，相同名称会被覆盖