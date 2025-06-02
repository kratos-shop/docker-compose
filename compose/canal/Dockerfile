# 使用官方 Canal Server 镜像作为基础镜像
FROM crpi-uzef3wvj2h8rbxm9.cn-shanghai.personal.cr.aliyuncs.com/0602_study/canal-server:latest

# 设置工作目录
WORKDIR /home/admin/canal-server

# 复制配置文件
COPY ./compose/canal/instance.properties /home/admin/canal-server/conf/example/instance.properties

# 设置环境变量
ENV CANAL_SERVER_MODE=instance
ENV CANAL_SERVER_PORT=11111

# 暴露端口
EXPOSE 11111

# 启动命令
CMD ["sh", "-c", "bin/startup.sh && tail -f logs/canal/canal.log"] 