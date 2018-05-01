<%--
  Created by IntelliJ IDEA.
  User: dangkhoa
  Date: 01/05/2018
  Time: 20:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         import="bean.Customer"
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
    <title>List bean.Customer</title>
</head>
<body>
<% ArrayList<Customer> customers = new ArrayList<>();
    customers.add(new Customer("Van-persi", "09-06-1983", "Netherlands", "vanpersi.jpg"));
    customers.add(new Customer("Rues", "09-06-1983", "Deutschland", "reus.jpg"));
    customers.add(new Customer("Ronaldo", "09-06-1985", "Portugal", "ronaldo.jpg"));
    customers.add(new Customer("Tevez", "09-06-1980", "Argentina", "tevez.jpg"));
    customers.add(new Customer("Xabi-Alonso", "09-06-1981", "Spain", "Xabi-Alonso.jpg"));
    request.setAttribute("customers",customers);
%>
<h1>Danh sach khach hang</h1><br>
    <table border="1">
    <tr>
        <th>Name</th>
        <th>Birthday</th>
        <th>Address</th>
        <th>Image</th>
    </tr>
    <c:forEach items="${customers}" var="customer">
        <tr>
            <td>${customer.name}</td>
            <td>${customer.birthday}</td>
            <td>${customer.address}</td>
            <td><img width="250px" height="200px" src="images/${customer.image}"</td>
        </tr>
    </c:forEach>
    </table>
</body>
</html>
