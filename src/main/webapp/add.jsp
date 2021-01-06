<%--
  Created by IntelliJ IDEA.
  User: 23629
  Date: 2021/1/4
  Time: 10:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="add" method="post" enctype="multipart/form-data">
    <table border="1px" align="center">
        <tr align="center">
            <td colspan="2">添加</td>
        </tr>
        <tr>
            <td>性别</td>
            <td><input type="text" name="sex"></td>
        </tr>
        <tr align="center">
            <td colspan="2"><input type="submit" value="提交"><input type="reset" value="重置"></td>
        </tr>
    </table>
</form>
</body>
</html>
