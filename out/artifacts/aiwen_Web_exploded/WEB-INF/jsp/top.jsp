<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/8/5
  Time: 21:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header" style="margin-left: 30px">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">爱问</span>
            </button>
            <a class="navbar-brand" href="#">
                <small style="font-size: 20px;letter-spacing: 5px;">爱问</small>
            </a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" style="margin-left: 300px">
            <form class="navbar-form navbar-left">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="问你想问~">
                </div>
                <button type="submit" class="btn btn-default" style="margin-right: 20px">
                    <span class="glyphicon glyphicon-search" > 问一下</span>
                </button>
            </form>
            <ul class="nav navbar-nav navbar-right">
                <c:if test="${session.user != null}">
                    <li>
                        <a href="/publish"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> 发布</a>
                    </li>
                    <li>
                        <a href="/profile/replies" ><span class="glyphicon glyphicon-bell" aria-hidden="true"></span> <span class="badge" >${session.unreadMessage}</span></a>
                    </li>
                    <li class="dropdown">

                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                           aria-expanded="false" >
                            <img class="img-thumbnail nav-img" th:src="${session.user.avatarUrl}" src="https://picsum.photos/id/1010/30/30" alt="">
                            <span>${session.user.getName()}</span>
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="/profile/questions"><span class="glyphicon glyphicon-send" aria-hidden="true"></span> 我的发布</a></li>
                            <li><a href="/myIndex"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> 个人资料</a></li>
                            <li><a href="/loginout"><span class="glyphicon glyphicon-log-in" aria-hidden="true"></span> 退出登录</a></li>
                        </ul>
                    </li>
                </c:if>

                <c:if test="${session.user == null}">
                    <li>
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                           aria-expanded="false" >
                            <span>请先登录</span>
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="/showLogin"> <img src="${ctx}/static/images/login.png" alt=""> 登录</a>
                            </li>
                            <li>
                                <a href="/showRegister"><img src="${ctx}/static/images/register.png" alt=""> 注册</a>
                            </li>
                        </ul>
                    </li>
                </c:if>


            </ul>
        </div>
    </div>
</nav>