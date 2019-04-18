<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/11
  Time: 12:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="container">
    <h4>增加学生</h4>
    <hr>
    <form action="addStu" method="post">


        <div>
            <label>姓名</label> <input type="text" name="name">
        </div>
        <div>
            <label>年龄</label> <input type="text" name="age">
        </div>
        <div>
            <label>性别</label> <input type="text" name="gender">
        </div>


        <div>
            <input type="submit" value="提交">
        </div>
    </form>
</div>

</body>
</html>
