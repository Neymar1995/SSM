<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/11
  Time: 14:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <div class="container">
        <h4>修改学生</h4>
        <hr>
        <c:forEach items="${stu}"  var="temp">
        <form action="/updateStu" method="post">
            <div>
                <label>编号</label> <input type="text" name="id" value="${temp.id}" readonly="readonly">
            </div>
            <div>
                <label>姓名</label> <input type="text" name="name" value="${temp.name}">
            </div>
            <div>
                <label>年龄</label> <input type="text" name="age" value="${temp.age}">
            </div>
            <div>
                <label>性别</label> <input type="text" name="gender" value="${temp.gender}">
            </div>

            <div>
                <input type="submit" value="修改">
            </div>
        </form>
        </c:forEach>
    </div>

</body>
</html>
