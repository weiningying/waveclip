FROM nginx:alpine

# 设置工作目录
WORKDIR /usr/share/nginx/html

# 复制项目文件
COPY index.html wave.svg wave-light.svg wave-dark.svg ./

# 设置文件权限
RUN chmod -R 644 /usr/share/nginx/html/*

# 暴露端口
EXPOSE 80

# 启动 nginx
CMD ["nginx", "-g", "daemon off;"]
