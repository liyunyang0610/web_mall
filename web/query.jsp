<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/14
  Time: 19:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <table >
        <tr>
            <td>id</td>
            <td>name</td>
            <td>city</td>
            <td>price</td>
            <td>number</td>
            <td>picture</td>
            <td>action</td>
        </tr>

       <c:forEach var="map" items="${all }">
           <tr>
               <td>${map.id}</td>
               <td>${map.name}</td>
               <td>${map.city}</td>
               <td>${map.price}</td>
               <td>${map.number}</td>
               <td><img src="image/${map.picture}" width="100px" height="100px" alt="${map.name}"></td>
               <td>
                   <a href="ItemsServlet?method=delete&id=${map.id}">delete</a>
                   <a href="ItemsServlet?method=queryOne&id=${map.id}">update</a>
               </td>
           </tr>
       </c:forEach>
    </table>
    <a href="add.jsp">add</a>
</body>
</html>
