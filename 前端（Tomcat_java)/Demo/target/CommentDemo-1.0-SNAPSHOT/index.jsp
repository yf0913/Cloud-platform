<<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<!-- <style></style>标签里是CSS相关操作，包括背景，文字，添加边框，布局等等
<body> </body>标签的防止的是html的相关操作，html是描述性语言，所有东西都是由标签组成的，标签就是< > </>这种样子的 -->

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>实验平台</title>
    <style>
        #整体{border: 1px solid red; height: 4500px;padding: 10px 250px 10px 250px;}
        #超链接部分{font-size: 17px;text-align: center;border-bottom: 1px solid blue;background-color: skyblue;}
        #简介{position: relative; left: -35%;text-decoration: none;border-right: 2px blue solid;}
        #成果{position: relative;left: -155px;text-decoration: none;border-right: 2px blue solid}
        #成员{position: relative;right: -95px;text-decoration: none;border-right: 2px blue solid}
        #联系方式{position: relative;left: 335px;text-decoration: none;border-right: 2px blue solid}
        #字体{height: 125px;position: relative;top: 90px;background-color: skyblue;}
        #字体1{font-family: Arial, Helvetica, sans-serif;font-weight: bold;font-style: italic;font-size: 30px;position: relative;top: 37px ;left: 350px;}
        #字体2{text-transform: capitalize;position: relative;left: 650px;top: -50px;font-size: 25px;font-weight: bold;}
        #字体4{font-weight: bold;font-size: 20px;}
        #简介huang{position: relative;top: 110px;border: 1px silver solid;}
        #字体3{font-weight: bold;text-transform: uppercase;font-size: 30px;}
        #新闻部分{height: 500px;border: solid 1px silver;position: relative;top: 150px;}
        #新闻字体{font-size: 30px;font-weight: bold;}
        #图片1{float: left;width: 170px;height: 160px;}
        #图片2{float: left;position: relative; top: -60px;width: 170px;height: 165px;}
        #文本1{width: 700px;height: 200px;}
        #文本2{position: relative; top: 100px;width: 700px;height: 200px;position: relative;top: -70px;}
        #协议部分{height: 1000px;border: solid 1px silver;position: relative;top: 200px;}
        #文字1{position: relative; right: 150px;}
        #协议选择1{position: relative;bottom: 20px; right: 30px;}
        #文字2{position: relative;left: 750px;bottom: 44px;}
        #协议选择2{position: relative;left: 868px;bottom: 64px;}
        #协议确定按钮{position: relative;left: 390px;bottom: 20px;}
        #文字3{position: relative;left: 440px;}
        #协议显示部分1{position: relative;left: 200px}
        /* #协议显示部分2{position: relative;left: 666px;bottom: 621px;} */
        /* #file{position: relative; bottom: 550px;right: 50px;}
        #file1{position: relative; bottom: 550px;right: 50px;}
        #提交1{position: relative; bottom: 550px;right: 100px;} */
        #file{position: relative; left: 350px;top: 20px;}
        #file1{position: relative;left: 350px;top: 20px;}
        #提交1{position: relative;left: 300px;top: 20px;}


    </style>

</head>
<body>

<!-- <div></div>标签的作用就是相当于这是一个整体，
<a href=""></a>是超链接标签，href属性的值可以是网页地址，也可以是同一个工程下的html文件，还有锚点超链接
<p></p> 是段落标签，用于存放文本内容。
<img src="" alt="">是图片标签，用于在网页显示图片
<input type="submit"> 提交按钮标签，属于表单部分
<input type="text">  单行文本框
<textarea name="" id="" cols="30" rows="10"></textarea> 多行文本框 -->



<div id="整体">
    <div id="超链接部分">
        <a href="http://www.baidu.com" id="简介">简介</a>
        <a href="https://home.firefoxchina.cn/" target="_blank" id="成果">成果</a>
        <a href="https://www.csdn.net/" target="_blank" id="成员">成员</a>
        <a href="https://www.bilibili.com/" target="_blank" id="联系方式">联系方式</a>
    </div>
    <div id="字体">
        <p id="字体1">HuangStudio</p>
        <p id="字体2">Move Forward <br>With Your Education</p>
    </div>
    <div id="简介huang">
        <p id="字体3">HuangStudio简介</p>
        <p>huangstudio实验室依托太原理工大学大数据学院，现有教授一名，研究生11名，以及本科生11名。</p>
        <p id="字体4">领导人：黄鑫</p>
        <p id="人物介绍">牛津大学博士，太原理工大学教授，博士生导师。在信息安全（安全协议，安全机制形式化分析），区块链，物联网等方面，有多年研究经验。主持和参与了多个相关的研究项目<br>，
            包括边缘计算中的区块链应用模型，基于区块链的存证机制，智能合约及其形式化验证，以及物联网中密码协议的性能优化。
        </p>


    </div>
    <div id="新闻部分">
        <p id="新闻字体">新闻</p>
        <img src="黄鑫.jpg" alt="" id="图片1">
        <p id="文本1">文本内容</p>
        <br>
        <br>
        <br>
        <img src="黄鑫.jpg" alt="" id="图片2">
        <p id="文本2">文本内容1111111111111111111111111111111111111 <br>11111111111111</p>

    </div>
    <div id="协议部分">
        <form method="get"  action="/data" id="协议">
            <div id="文字1">请选择协议s端：</div>

            <select name="treaty1" id="协议选择1">
                <option value="protocol_A_S.py">protocol_A_S</option>
                <option value="protocol_B_S.py">protocol_B_S</option>
                <option value="protocol_D_S.py">protocol_D_S</option>
            </select>

            <div id="文字2">请选择协议C端：</div>

            <select name="treaty2" id="协议选择2">
                <option value="protocol_A_C.py">protocol_A_C</option>
                <option value="protocol_B_C.py">protocol_B_C</option>
                <option value="protocol_D_C.py">protocol_D_C</option>
            </select>

            &nbsp;&nbsp;&nbsp;<input type="button" value="确定" id="协议确定按钮"><br>

            <div id="文字3">协议输出结果显示在这里：</div>
            <textarea name="" id="协议显示部分1" cols="80" rows="30" ></textarea><br>
            <!--             <div id="文字3">协议S端输出结果显示在这里：</div>
                        <textarea name="" id="协议显示部分2" cols="45" rows="30"></textarea> -->

            <input type="file" name="file" id="file">
            <input type="file" name="file" id="file1">
            <input type="button" value="提交" id="提交1">
        </form>
    </div>
</div>
<script>
    var oselect=document.getElementById('协议选择1');
    var oselect1=document.getElementById('协议选择2');
    var bot=document.getElementById('协议确定按钮');
    var otext1=document.getElementById('协议显示部分1');
    // var otext2=document.getElementById('协议显示部分2');
    var file11=document.getElementById('file');
    var file12=document.getElementById('file1');
    var subm=document.getElementById('提交1');
    //创建XMLHttpRequest对象
    var xhr =new XMLHttpRequest();
    xhr.open("get","data");
    xhr.send();
    bot.onclick=function()
    {
        var content1=oselect.value;
        var content2=oselect1.value;
        var xhr1 =new XMLHttpRequest();
        xhr1.open("post","data");
        xhr1.setRequestHeader("content-type","application/x-www-form-urlencoded");
        xhr1.send("con1="+content1+"&"+"con2="+content2);
        otext1.value=xhr.responseText;
    }
    subm.onclick=function()
    {
        var fileway1=file11.value;     //路径 fileway
        var fileway2=file12.value;
        var filename1=file11.files[0].name;     // 名字 filename
        var filename2=file12.files[0].name;
        var o_option1=document.createElement('option');
        var o_option2=document.createElement('option');
        var textnode1=document.createTextNode(filename1);
        var textnode2=document.createTextNode(filename2);
        o_option1.appendChild(textnode1);
        oselect.appendChild(o_option1);
        o_option2.appendChild(textnode2);
        oselect1.appendChild(o_option2);         //操作的时候先点击上传文件，点击确定，下拉列表就会更新

        var way1=fileway1;
        var way2=fileway2;
        var xhr1 =new XMLHttpRequest();
        xhr1.open("post","data3");
        xhr1.setRequestHeader("content-type","application/x-www-form-urlencoded");
        xhr1.send("way1="+way1+"&"+"way2="+way2);
    }

</script>
</body>
</html>