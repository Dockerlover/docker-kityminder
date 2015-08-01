# 基础镜像
FROM docker-mysql
# 维护人员
MAINTAINER  liuhong1.happy@163.com
# 添加环境变量
ENV USER_NAME admin
ENV SERVICE_ID kityminder
# 默认暴露80端口
EXPOSE 80
# 复制代码
COPY . /app
# 映射代码、日志目录等的数据卷
VOLUME ["/app","/usr/local/apache2/logs"]
# 启动supervisord
CMD ["/usr/bin/supervisord"]
