# moco
Easy Setup Stub Server
一、各文件作用

1、moco-runner-1.3.0-standalone.jar：启动mock服务的jar包，启动方法：

  java -jar ./moco-runner-1.3.0-standalone.jar  http -p 8777 -c  bitm.json
 
2、demo.json：编写的mock接口信息

3、moco_postman_demo.json：使用postman调用mock的接口

4、start.sh：使用bash脚本快速启动mock服务(同步骤1)

  bash start.sh
  
5、stop.sh：使用bash脚本快速停止mock服务

  bash stop.sh
  
6、stop_不生效.sh：网上代码，适用于linux服务器，pwdx命令mac无法使用

二、源码：https://github.com/dreamhead/moco

三、参考文档：

  https://blog.csdn.net/qq_32706349/article/details/80472445
  
  https://www.jianshu.com/p/62927d146fd1/
