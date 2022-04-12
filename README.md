# Cloud-platform
使用云实验平台实现某些协议的调用、运行与结果展示
主目录内test_server.zip为服务端
主目录内test_client.zip为客户端
branches内为主机端代码，分为前端（tomcat）与后端（python）


1.	基本使用：
	服务器端与客户端启动监听：
	虚拟机密码为：123456
	进入后，打开终端，输入 cd pycharm……（通过Tab补全）
	输入cd bin
	输入 ./pycharm.sh 打开pycharm。
	运行controller 与 file_server进程。
2.	各端IP与端口配置：
	服务器端与客户端：
	controller.py 需要Host ,Port 配置为本机IP与指定端口；
	message.py需要配置UHOST，UPORT为用户端IP及端口；
	协议交互代码中，需要配置IP、PORT为服务器端IP及端口（客户端与服务器端二者相同）
	用户端：
	controller.py 需要配置HOST，PORT为本机IP与指定端口；
	SHOST，SPORT为服务器端IP及端口；
	CHOST，CPORT为客户端IP及端口；
	file_upload.py 需要配置的地方与上述相同。
需要注意：各主机间通信IP地址相同，但不同功能文件之间端口号要尽量避开，以防止出现交互错误（未设置安全保护。）
同时，实现同一信息交互的双端需要保证端口号相同；
如：controller.py中服务器端与客户端IP与端口号需要与双端主机contorller.py中IP及端口号相同；
服务器端与客户端message.py中用户端IP及端口号需要与用户端controller.py中本机IP及端口号相同；
主机端file_upload.py中双端IP端口需要与双端file_server.py中配置相同；
同一协议双端代码需要配置为服务端IP端口。
3.	前端说明：
	需要安装Tomcat环境（我在IntelliJ IDEA 专业版中进行配置）；
	使用IDEA打开前端项目，需要配置CommentServlet,java（开发基于之前评论框的demo，所以命名有些出入。）中String argu = “”三个字段为用于编译后端python文件的编译器地址，后端python文件controller.py的地址，剩余两项为参数，不需要修改。
	同时需要配置Fileupload.py中arguments，第二个改变为file_upload.py的地址。
4.	环境说明：
	python需要2.X的版本，安装ecc等库后才可（虚拟机已配置，不需变更）
	Tomcat应该无版本要求。
5.	使用：
	先启动客户端与服务器端contorller与file_server；
	后启动Tomcat项目，即可进行前端操作。
6.	文件上传说明：
	客户端文件默认存储在/home/client/PycharmProjects/test_client/Warehouse/目录下，服务器端文件默认存储为上述目录中client变更为server（两个都变）。
	协议代码仅在这两个目录下时可通过前端用协议文件名进行调用。
	由于本地服务器对于文件上传时地址保护，使得地址变更为C:/fakepath/文件名，可以尝试关闭该功能或在此地址下进行文件的上传。
7.	修改优化建议：
	前端优化：优化设计逻辑、优化自刷新、优化信息长期储存、优化界面UI设计等；
	后端优化：可优化各类调用交互逻辑，使得部分参数（如已有协议调用、文件存储目录、传递的信息）等可以在前端进行指定；可以增添文件管理功能，如删除、修改等；优化协议报错与安全保护等逻辑，使得后端出错时前端得到反馈或强化信息交流；优化前端功能，增加使得可以在前端重启后端等功能。
8.	测试代码问题：
	文件里包含大量测试文件，可酌情使用，以测试某个交互或逻辑能否完成实现，方便找出问题。
9.	建议配置时按照
	可以完成本机上一组协议间交互；
	可以完成双端上一组协议间交互；
	可以通过发送指令完成用户端对协议双端协议代码进行调用来完成协议间交互并获取返回信息；
