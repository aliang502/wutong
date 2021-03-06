<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>我的发布</title>

    <link rel="stylesheet" href="css/reset.min.css" type="text/css"/>
    <link href="css/wodefabu.css" rel="stylesheet"  type="text/css"/>
    <link rel="shortcut icon" type="image/x-icon" href="img/xuqiufabu/xlogo.png" media="screen" />
</head>
<body>
<div class="banxin1260">
    <div>
        <!--zhu dao hang-->
        <div class="nav">
            <span><a href="#">关于我们</a></span>
            <ul>
			<li>
             <div class="aa" <c:if test="${empty user.userName}"> style="display: block" </c:if><c:if test="${not empty user.userName}">style="display: none" </c:if>><a href="/dengL.do" >登录</a></div>
             <div class="aa" <c:if test="${not empty user.userName}"> style="display: block" </c:if><c:if test="${empty user.userName}">style="display: none" </c:if>><a href="/dengL.do" >${user.userName }</a></div>       
         	</li>
			<li><a href="/loginOut.do">退出</a></li>
            <li><a href="/login.do">免费注册</a></li>
            <li><a href="/alltenders.do">我的账户</a></li>
            <li><a href="#">联系客服</a></li>
            <li><a href="#">消息</a></li>
            <li><a href="#">帮助</a></li>
            </ul>
        </div>
        <!--logo 搜索-->
        <div class="search banx" >
            <span class="logo"></span>
            <p></p>
     <!--        <div class="search_f">
                <form method="GET"   target="_blank" onsubmit="return formsub()">
                    <input  id="kuang" type="text" name="q" value="搜全网" onfocus="javascript:this.value=''" ><button type="button"   name="topic" style="color: #0000cc" onclick="display_alert()" style="cursor:pointer" ><img src="img/souuso.png" ></button>
                    <a href="#" class="re">热门搜索</a>
                    <a href="#">设计</a>
                    <a href="#">设计</a>
                    <a href="#">设计</a>
                    <a href="#">设计</a>
                </form>
            </div> -->
        </div>
        <!--  zhu ti 导航-->
        <div class="content banx">
            <div class="mainbav">
                <ul>
                  <li><a href="/index.do">首页</a></li>
                  <li ><a href="/userMessage.do">账户设置</a></li>
                  <li  class="mr"><a href="/alltenders.do">我的发布</a></li>
                  <li><a href="#">专家预约</a></li>
                  <li><a href="#">消息</a></li>
                  <li><a href="#">常见问题</a></li>
                </ul>
            </div>

            <!--       主体  部分  主题  内容                    -->
            <div class="content-1">
                <div class="left">
                    <div class="to">
                        <div>
                           <img src="img/xuqiufabu/wdl.png" />
                        </div>
                        <span>${niname }</span>
                    </div>
                    <div><i></i><a href="/alltenders.do">我的发布</a></div>
                    <div class="menu" id="menu">
                        <ul class="fir">
                            <li>
                                <em></em><span><i></i>个人资料</span>
                                <ul class="two">
                                    <li><a href="/userMessage.do">基本信息</a></li>
                                    <li><a href="#">身份认证</a></li>
                                    <li><a href="#">手机绑定</a></li>
                                </ul>
                            </li>
                            <li>
                                <em></em><span><i></i>评论管理</span>
                            </li>
                            <li>
                                <em></em><span><i></i>账号安全</span>
                                <ul  class="two">
                                    <li><a href="/updatePasswords.do">修改登录密码</a></li>
                                    <li><a href="#">当前安全级别</a></li>
                                    <li><a href="#">联系方式</a></li>
                                    <li><a href="#">邮寄地址</a></li>
                                </ul>
                            </li>
                            <li>
                                <em></em><span><i></i>常见问题</span>
                            </li>
                            <li>
                                <em></em><span><i></i>投诉建议</span>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="right">
                    <div>
                        <div class="fa"><p>我的发布</p></div>
                        <ul>
                            <c:forEach items="${pagination.list }" var="tender" >        
                             <li><a href="/choiceDemand.do?projectName=${tender.projectName }" class="title_a"><p>${tender.projectName }</p></a><span><a class="del_a" href="/deleteByneed.do?projectName=${tender.projectName }">删除</a></span></li><!-- <p>编辑</p> -->
                            </c:forEach>

                        </ul>
                    </div>
                    	<div class="allpage" style="margin-top: 10px">
           						 <span class="number">
           								 <c:forEach items="${pagination.pageView }" var="page" >${page } </c:forEach>
            					 </span>
           				</div>
                    <div class="">

                    </div>
                </div>
            </div>
            <!-- 占位符                                                  横线           -->
            <div class="main_zhanwei banx"></div>

            <!--尾部                                             尾部-->
            <div class="main_wenbu banx">
                <p><a href="#">关于我们</a></p>
                <p><a href="#">企业服务</a></p>
                <p><a href="#">联系我们</a></p>
                <p><a href="#">帮助中心</a></p>
                <p><a href="#">网站导航</a></p>
            	<p>Copyright2016 北京梧桐时代科技有限责任公司 . <a href="http://www.miitbeian.gov.cn/publish/query/indexFirst.action">京ICP备17016004号-1</a></p>
                <p>通讯地址：北京市大兴区亦庄县小羊坊康碱路 6 号</p>
            </div>
            <!-- <a href="javascript:scroll(0,0)">返回顶部</a>-->
        </div>
    </div>
</div>
</body>
<script src="JS/jquery-1.11.3.js" type="application/javascript"></script>
<script type="text/javascript">

    /**
     *
     * @author by futural
     */
/*     (function($){
        var ms = {
            init:function(obj,args){
                return (function(){
                    ms.fillHtml(obj,args);
                    ms.bindEvent(obj,args);
                })();
            },
            //填充html
            fillHtml:function(obj,args){
                return (function(){
                    obj.empty();
                    //上一页
                    if(args.current > 1){
                        obj.append('<a href="javascript:;" class="prevPage"><上一页</a>');
                    }else{
                        obj.remove('.prevPage');
                        obj.append('<span class="disabled"><上一页</span>');
                    }
                    //中间页码
                    if(args.current != 1 && args.current >= 4 && args.pageCount != 4){
                        obj.append('<a href="javascript:;" class="tcdNumber">'+1+'</a>');
                    }
                    if(args.current-2 > 2 && args.current <= args.pageCount && args.pageCount > 5){
                        obj.append('<span>...</span>');
                    }
                    var start = args.current -2,end = args.current+2;
                    if((start > 1 && args.current < 4)||args.current == 1){
                        end++;
                    }
                    if(args.current > args.pageCount-4 && args.current >= args.pageCount){
                        start--;
                    }
                    for (;start <= end; start++) {
                        if(start <= args.pageCount && start >= 1){
                            if(start != args.current){
                                obj.append('<a href="javascript:;" class="tcdNumber">'+ start +'</a>');
                            }else{
                                obj.append('<span class="current">'+ start +'</span>');
                            }
                        }
                    }
                    if(args.current + 2 < args.pageCount - 1 && args.current >= 1 && args.pageCount > 5){
                        obj.append('<span>...</span>');
                    }
                    if(args.current != args.pageCount && args.current < args.pageCount -2  && args.pageCount != 4){
                        obj.append('<a href="javascript:;" class="tcdNumber">'+args.pageCount+'</a>');
                    }
                    //    下一页
                    if(args.current < args.pageCount){
                        obj.append('<a href="javascript:;" class="nextPage">下一页></a>');
                    }else{
                        obj.remove('.nextPage');
                        obj.append('<span class="disabled">下一页></span>');
                    }
                    obj.append('<span class="pagecount">共'+args.pageCount+'页</span>');
                    //跳转页码
                    if(args.turndown == 'true'){
                        obj.append('<span class="countYe">到第<input type="text" maxlength='+args.pageCount.toString().length+'>页<a href="javascript:;" class="turndown">确定</a><span>');


                    }
                })();
            },
            //绑定事件
            bindEvent:function(obj,args){
                return (function(){
                    obj.on("click","a.tcdNumber",function(){
                        var current = parseInt($(this).text());
                        ms.fillHtml(obj,{"current":current,"pageCount":args.pageCount,"turndown":args.turndown});
                        if(typeof(args.backFn)=="function"){
                            args.backFn(current);
                        }
                    });
                    //上一页
                    obj.on("click","a.prevPage",function(){
                        var current = parseInt(obj.children("span.current").text());
                        ms.fillHtml(obj,{"current":current-1,"pageCount":args.pageCount,"turndown":args.turndown});
                        if(typeof(args.backFn)=="function"){
                            args.backFn(current-1);
                        }
                    });
                    //下一页
                    obj.on("click","a.nextPage",function(){
                        var current = parseInt(obj.children("span.current").text());
                        ms.fillHtml(obj,{"current":current+1,"pageCount":args.pageCount,"turndown":args.turndown});
                        if(typeof(args.backFn)=="function"){
                            args.backFn(current+1);
                        }
                    });
                    //跳转
                    obj.on("click","a.turndown",function(){
                        var page = $("span.countYe input").val();
                        if(page>args.pageCount){
                            alert("您的输入有误，请重新输入！");
                        }
                        ms.fillHtml(obj,{"current":page,"pageCount":args.pageCount,"turndown":args.turndown});
                        /*if(typeof(args.backFn)=="function"){
                         args.backFn(current+1);
                         }
                    });
                })();
            }
        }
        $.fn.createPage = function(options){
            var args = $.extend({
                pageCount : 10,
                current : 1,
                turndown:true,
                backFn : function(){}
            },options);
            ms.init(this,args);
        }
    })(jQuery);


    /*              页数    当前                                          
    $(function(){$(".pageDiv").createPage({
        pageCount:9,//总页数
        current:1,//当前页
        turndown:'true',//是否显示跳转框，显示为true，不现实为false,一定记得加上引号...
        backFn:function(p){
            console.log(p);
        }
    });
    })    */ 

    /*                          树形菜单                                  */


    $("#menu").on("click", function (ev) {
        var tar = ev.target,
                $tar = $(tar);//->把获取的原生DOM事件源对象转换为jQuery对象,这样就可以随意的使用jQuery中提供的方法了
        if (/^(EM|SPAN)$/i.test(tar.tagName)) {
            var $tarP = $tar.parent(),
                    $childUL = $tarP.children("ul"),
                    $childEM = $tarP.children("em");

            if ($childUL.length <= 0) {
                return;
            }

            var isBok = $childUL.css("display");
            $childEM.toggleClass("bg");
            $childUL.stop().slideToggle(200, function () {
                if (isBok === "block") {
                    //->当前是显示的我们让其后代中的UL/EM隐藏
                    $childUL.find("ul").css("display", "none");
                    $childUL.find("em").removeClass("bg");
                }
            });
        }
    });

</script>
</html>
