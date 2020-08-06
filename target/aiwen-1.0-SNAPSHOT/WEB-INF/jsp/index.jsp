<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/8/5
  Time: 15:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" import="java.util.*,java.text.*" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
                <br/>
                <br/>
                <c:forEach items="${questioinPage.list}" var="question">
                    <div class="media media-css">

                        <div class="media middle-div">
                            <div class="media-left">
                                <a href="#">
                                    <img class="media-object img-rounded" src="${question.user.avatarUrl}" alt="">
                                </a>
                            </div>
                            <div class="media-body">
                                <h4>
                                    <a href="${ctx}/question/' + ${question.id}" class="media-heading index-text-a" >${question.title}</a>
                                </h4>
                                <c:forEach items="${question.tag.split(',')}" var="tag">
                                    <span class="label label-default"><small>${tag}</small></span>
                                </c:forEach>
                                <span class="text-color-999">
                                    <a href="#" ><span>${question.user.name}</span></a> 发布了置顶文章 •
                                    <span>${question.commentCount != null ? question.commentCount : 0}</span>个评论 •
                                    <span >${question.viewCount != null ? question.viewCount : 0}</span> 次浏览 •
                                    <span>
                                        <jsp:useBean id="timestamp" class="java.util.Date"/>
                                        <jsp:setProperty name="timestamp" property="time" value="${question.updateTime}"/>
                                        <fmt:formatDate value="${timestamp}" pattern="yyyy-MM-dd" />
                                    </span>
                                </span>
                            </div>
                        </div>
                    </div>
                </c:forEach>

                <!-- 页码显示 -->
                <div class="pageshow">
                    <span> 第${questioinPage.currPage}/${questioinPage.totalPage}页</span>
                &nbsp;&nbsp;  <span>总记录数：${questioinPage.totalCount }&nbsp;&nbsp;每页显示:${questioinPage.pageSize}</span>
                &nbsp;&nbsp;  <span>
                        <c:if test="${questioinPage.currPage > 1}">
                            <a href="${ctx}/?page=1">[首页]</a>&nbsp;&nbsp;
                            <a href="${ctx}/?page=${questioinPage.currPage-1}">[上一页]</a>
                    &nbsp;&nbsp;  </c:if>
                        <c:if test="${questioinPage.currPage < questioinPage.totalPage}">
                            <a href="${ctx}/?page=${questioinPage.currPage+1}">[下一页]</a>&nbsp;&nbsp;
                            <a href="${ctx}/?page=${questioinPage.totalPage}">[尾页]</a>&nbsp;&nbsp;
                        </c:if>
				    </span>
                </div>

            </div>
            <!-- 右 -->
            <div class="col-lg-3 col-md-12 col-sm-12 col-xs-12" >
                <!--微信-->
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 comment-div-2" >
                    <hr/>
                    <h4>联系站长</h4>
                    <div class="col-lg-12 col-md-12 col-sm-8 col-xs-12" >
                        <img src="${ctx}/static/images/qqwe.jpg" alt="..." class="img-thumbnail index-image">
                    </div>
                </div>
                <hr/>
            </div>
        </div>
    </div>

    <!-- 底部 -->

    <c:import url="bottom.jsp"></c:import>

</body>
</html>
