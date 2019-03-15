<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/14
  Time: 19:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>


    <form action="ItemsServlet">
        <input type="hidden" name="method" value="add">
        <table>
            <tr>
                <td>id</td>
                <td>
                    <input type="text" name="id" >
                </td>
            </tr>
            <tr>
                <td>name</td>
                <td>
                    <input type="text" name="name" >
                </td>
            </tr>
            <tr>
                <td>city</td>
                <td>
                    <input type="text" name="city" >
                </td>
            </tr>
            <tr>
                <td>price</td>
                <td>
                    <input type="text" name="price" >
                </td>
            </tr>
            <tr>
                <td>number</td>
                <td>
                    <input type="text" name="number" >
                </td>
            </tr>
            <tr>
                <td>picture</td>
                <td>
                    <input type="text" name="picture" >
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="add">
                    <input type="reset" value="reset">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
