# docker-nginx
docker的nginx服务器镜像
### 进入容器
docker exec -it 76f3bfab1e86 /bin/sh

### 打包
docker build -t nginx:v1 .

### 运行
 docker run -p 80:80  -d nginx:v1