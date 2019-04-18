<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/11
  Time: 8:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
    <title>Title</title>
    <jsp:include page="../../common.jsp"/>
</head>
<body>

<div id="container">
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>学号</th>
            <th>姓名</th>
            <th>年龄</th>
            <th>性别</th>
            <th>操作</th>
        </tr>
        </thead>

        <tbody>
        <c:forEach items="${pageInfo.list}"  var="temp">
            <tr>
                <td>${temp.id}</td>
                <td>${temp.name}</td>
                <td>${temp.age}</td>
                <td>${temp.gender}</td>
                <td>
                    <%--<a href="single/${temp.id}">修改</a>--%>
                    <input type="button" class="btn btn-danger" value="删除" onclick="f1(${temp.id})">
                    <input type="button" class="btn btn-primary" value="修改" onclick="f2(${temp.id})">
                    <%--<a href="delStu/${temp.id}">删除</a>--%>
                </td>
            </tr>

            </c:forEach>
        </tbody>
    </table>
    <!-- 分页的导航栏 -->
    <div class="pagination-layout">

        <div class="pagination">
            <ul class="pagination">

            </ul>


        </div>
    </div>

    <%--<a href="toadd">新增</a>--%>
    <input type="button" class="btn btn-info" value="新增" onclick="f3()">

    <script>
        function f1(id) {
            window.location.href="delStu/"+id
        }
        function f2(id) {
            window.location.href="single/"+id
        }
        function f3() {
            window.location.href="toadd"
        }




//        分页

            var if_fistime = true;
            $(".pagination")
                .jqPaginator(
                    {
                        totalPages : ${pageInfo.pages},
                        visiblePages : ${pageInfo.pageSize},
                        currentPage : ${pageInfo.pageNum},
                        first : '<li class="first"><a href="javascript:void(0);">第一页</a></li>',
                        prev : '<li class="prev"><a href="javascript:void(0);">上一页</a></li>',
                        next : '<li class="next"><a href="javascript:void(0);">下一页</a></li>',
                        last : '<li class="last"><a href="javascript:void(0);">最后一页</a></li>',
                        page : '<li class="page"><a href="javascript:void(0);">{{page}}</a></li>',

                        onPageChange : function(num) {

                            /* alert(num); */
                            if (if_fistime) {
                                if_fistime = false;
                            } else {
                                changePage(num);
                            }

                        }

                    });



        function changePage(num) {

            window.location.href = "queryAll?pageNum=" + num;
        }



    </script>

</div>

</body>
</html>
