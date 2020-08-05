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
                <br/>
                <br/>

                <div class="media media-css">
                    <div class="media middle-div">
                        <div class="media-left">
                            <a href="#">
                                <img class="media-object img-rounded" src="https://picsum.photos/id/1010/60/60" alt="">
                            </a>
                        </div>
                        <div class="media-body">
                            <h4>
                                <a th:href="@{'/question/' + ${question.id}}" class="media-heading index-text-a" th:text="${question.title}" >如何快速学会springboot开发</a>
                            </h4>
                            <span>
                                <span class="label label-default"><small th:text="${tag}">Cras s</small></span>
                            </span>
                            <span class="text-color-999">
                            <a href="#" ><span  th:text="${question.tbUser.name}"></span></a> 发布了置顶文章 •
                            <span>0</span>个评论 •
                            <span >888</span> 次浏览 •
                            <span>1</span>
                        </span>
                        </div>
                    </div>
                </div>
                <div class="media media-css">
                    <div class="media middle-div">
                        <div class="media-left">
                            <a href="#">
                                <img class="media-object img-rounded" src="https://picsum.photos/id/1010/60/60" alt="">
                            </a>
                        </div>
                        <div class="media-body">
                            <h4>
                                <a th:href="@{'/question/' + ${question.id}}" class="media-heading index-text-a" th:text="${question.title}" >如何快速学会springboot开发</a>
                            </h4>
                            <span>
                                <span class="label label-default"><small th:text="${tag}">Cras s</small></span>
                            </span>
                            <span class="text-color-999">
                            <a href="#" ><span  th:text="${question.tbUser.name}"></span></a> 发布了置顶文章 •
                            <span>0</span>个评论 •
                            <span >888</span> 次浏览 •
                            <span>1</span>
                        </span>
                        </div>
                    </div>
                </div>
                <div class="media media-css">
                    <div class="media middle-div">
                        <div class="media-left">
                            <a href="#">
                                <img class="media-object img-rounded" src="https://picsum.photos/id/1010/60/60" alt="">
                            </a>
                        </div>
                        <div class="media-body">
                            <h4>
                                <a th:href="@{'/question/' + ${question.id}}" class="media-heading index-text-a" th:text="${question.title}" >如何快速学会springboot开发</a>
                            </h4>
                            <span>
                                <span class="label label-default"><small th:text="${tag}">Cras s</small></span>
                            </span>
                            <span class="text-color-999">
                            <a href="#" ><span  th:text="${question.tbUser.name}"></span></a> 发布了置顶文章 •
                            <span>0</span>个评论 •
                            <span >888</span> 次浏览 •
                            <span>1</span>
                        </span>
                        </div>
                    </div>
                </div>
                <div class="media media-css">
                    <div class="media middle-div">
                        <div class="media-left">
                            <a href="#">
                                <img class="media-object img-rounded" src="https://picsum.photos/id/1010/60/60" alt="">
                            </a>
                        </div>
                        <div class="media-body">
                            <h4>
                                <a th:href="@{'/question/' + ${question.id}}" class="media-heading index-text-a" th:text="${question.title}" >如何快速学会springboot开发</a>
                            </h4>
                            <span>
                                <span class="label label-default"><small th:text="${tag}">Cras s</small></span>
                            </span>
                            <span class="text-color-999">
                            <a href="#" ><span  th:text="${question.tbUser.name}"></span></a> 发布了置顶文章 •
                            <span>0</span>个评论 •
                            <span >888</span> 次浏览 •
                            <span>1</span>
                        </span>
                        </div>
                    </div>
                </div>
                <div class="media media-css">
                    <div class="media middle-div">
                        <div class="media-left">
                            <a href="#">
                                <img class="media-object img-rounded" src="https://picsum.photos/id/1010/60/60" alt="">
                            </a>
                        </div>
                        <div class="media-body">
                            <h4>
                                <a th:href="@{'/question/' + ${question.id}}" class="media-heading index-text-a" th:text="${question.title}" >如何快速学会springboot开发</a>
                            </h4>
                            <span>
                                <span class="label label-default"><small th:text="${tag}">Cras s</small></span>
                            </span>
                            <span class="text-color-999">
                            <a href="#" ><span  th:text="${question.tbUser.name}"></span></a> 发布了置顶文章 •
                            <span>0</span>个评论 •
                            <span >888</span> 次浏览 •
                            <span>1</span>
                        </span>
                        </div>
                    </div>
                </div>
                <div class="media media-css">
                    <div class="media middle-div">
                        <div class="media-left">
                            <a href="#">
                                <img class="media-object img-rounded" src="https://picsum.photos/id/1010/60/60" alt="">
                            </a>
                        </div>
                        <div class="media-body">
                            <h4>
                                <a th:href="@{'/question/' + ${question.id}}" class="media-heading index-text-a" th:text="${question.title}" >如何快速学会springboot开发</a>
                            </h4>
                            <span>
                                <span class="label label-default"><small th:text="${tag}">Cras s</small></span>
                            </span>
                            <span class="text-color-999">
                            <a href="#" ><span  th:text="${question.tbUser.name}"></span></a> 发布了置顶文章 •
                            <span>0</span>个评论 •
                            <span >888</span> 次浏览 •
                            <span>1</span>
                        </span>
                        </div>
                    </div>
                </div>

                <!-- 页码显示 -->
                <div class="pageshow">
                    <span> 第${currPage }/${totalPage}页</span>
                &nbsp;&nbsp;  <span>总记录数：${totalCount }&nbsp;&nbsp;每页显示:${pageSize}</span>
                &nbsp;&nbsp;  <span>
                        <c:if test="${currPage > 1}">
                            <a href="${baseUri}/showAllAttendance?page=1">[首页]</a>&nbsp;&nbsp;
                            <a href="${baseUri}/showAllAttendance?page=${currPage-1}">[上一页]</a>
                    &nbsp;&nbsp;  </c:if>
                        <c:if test="${currPage < totalPage}">
                            <a href="${baseUri}/showAllAttendance?page=${currPage+1}">[下一页]</a>&nbsp;&nbsp;
                            <a href="${baseUri}/showAllAttendance?page=${totalPage}">[尾页]</a>&nbsp;&nbsp;
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
