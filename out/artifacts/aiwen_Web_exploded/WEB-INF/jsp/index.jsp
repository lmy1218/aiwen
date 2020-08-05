<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/8/5
  Time: 15:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <title>Title</title>

    <link href="${ctx}/static/css/bootstrap.min.css" rel="stylesheet" />
    <script type="text/javascript" src="${ctx}/static/js/jquery-3.4.1.min.js" ></script>
    <script type="text/javascript" src="${ctx}/static/js/bootstrap.min.js" ></script>
    <link rel="stylesheet" type="text/css" href="${ctx}/static/css/main.css" />
</head>
<body>
    <!-- 导航栏 -->
    <%@include file="top.jsp"%>

    <!-- 中间 -->
    <div class="container-fluid main">
        <div class="row">
            <!-- 左 -->
            <div class="col-lg-9 col-md-12 col-sm-12 col-xs-12" >
                <br/>
                <!-- 轮播图 -->
                <div id="carousel-example-generic" class="carousel slide center-block" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="4"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <img class="ca-img" src="https://picsum.photos/id/1/525/200" alt="...">
                            <div class="carousel-caption">
                                图1
                            </div>
                        </div>
                        <div class="item">
                            <img class="ca-img" src="https://picsum.photos/id/1/525/200" alt="...">
                            <div class="carousel-caption">
                                图2
                            </div>
                        </div>
                        <div class="item">
                            <img class="ca-img" src="https://picsum.photos/id/1/525/200" alt="...">
                            <div class="carousel-caption">
                                图3
                            </div>
                        </div>
                        <div class="item">
                            <img class="ca-img" src="https://picsum.photos/id/1/525/200" alt="...">
                            <div class="carousel-caption">
                                图4
                            </div>
                        </div>
                        <div class="item">
                            <img class="ca-img" src="https://picsum.photos/id/1/525/200" alt="...">
                            <div class="carousel-caption">
                                图5
                            </div>
                        </div>
                    </div>

                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>

            </div>
            <!-- 右 -->
            <div class="col-lg-3 col-md-12 col-sm-12 col-xs-12" >

            </div>
        </div>
    </div>

</body>
</html>
