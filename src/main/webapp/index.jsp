
<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<table id="userTable" border="1" align="center">

</table>
<script src="${pageContext.request.contextPath}/jquery-3.2.1.js"></script>
<script>
    $(function () {
        sex();
        function sex(){
            $.post("all",{},all,"JSON")
            function all(data) {
                $("#userTable").html("");
                $("#userTable").append("" +
                    "   <tr align=\"center\">\n" +
                    "        <th>编号</th>\n" +
                    "        <th>性别</th>\n" +
                    "        <th>操作</th>\n" +
                    "    </tr>")
                $(data).each(function () {
                    $("#userTable").append(" " +
                        "       <tr align=\"center\">\n" +
                        "            <td>"+this.id+"</td>\n" +
                        "            <td>"+this.sex+"</td>\n" +
                        "            <td>" +
                        "               <a class='del' value='"+this.id+"' href=\"javascript:void(0)\">删除</a>/" +
                        "               <a href=\"update.html?id="+this.id+"\">修改</a></td>\n" +
                        "        </tr>")
                })
                $("#userTable").append("" +
                    "   <tr align=\"center\">\n" +
                    "        <td colspan=\"10\"><a href=\"add.html\">添加</a></td>\n" +
                    "    </tr>")

                $(".del").click(function () {
                    var id = $(this).attr("value");
                    $.post("del/"+id, delUser/*,"text"*/)
                    function delUser(data) {
                        if (data){
                            alert("删除成功!")
                            sex();
                        }else {
                            alert("删除失败!")
                        }
                    }
                })
            }
        }

    })

</script>
</body>
</html>