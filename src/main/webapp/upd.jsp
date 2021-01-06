<%--
  Created by IntelliJ IDEA.
  User: yyl
  Date: 2020/12/4
  Time: 10:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form id="updFrom" action="update?id=${id}" method="post" enctype="multipart/form-data">
    <table border="1px" align="center">
        <tr align="center">
            <td colspan="2">修改</td>
        </tr>
        <tr>
            <td>性别</td>
            <td><input id="sex" type="text" name="sex"></td>
        </tr>
        <tr align="center">
            <td colspan="2"><input type="submit" value="提交"><input type="reset" value="重置"></td>
        </tr>
    </table>
</form>
</body>
<script src="${pageContext.request.contextPath}/jquery-3.2.1.js"></script>
<script>
    $(function () {
        //通过JQuery地址栏
        var id = $("#updFrom").attr("action").substring($("#updFrom").attr("action").indexOf("id=")+3)
        $.post("get1",{"id":id},getOne,"JSON")
        function getOne(data) {
            $("#sex").val(data.sex);
        }
    })
</script>
</html>
