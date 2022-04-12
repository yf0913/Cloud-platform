Tomcat版本为8.5.72，新版未测试过能不能跑，遇到过版本问题。

启动项目后，默认网址为：http://localhost:8080/CommentDemo/，可在运行配置里修改。

form内行段注释放在这里了，放在form里莫名会打印在网页，可能我注释方法不对。
//创建评论框    
<input type="text" placeholder="请输入评论" name="comment"/>
//创建评论按钮    
<input type="submit" value="评论"/>
//创建文本输出位置    
<td> <div style="color:red; align:center;"><%=session.getAttribute("mess") %></div> </td>

运行时文本框中输入内容，即可在下一行打印，重复操作会覆盖。

其它代码问题直接问我。
