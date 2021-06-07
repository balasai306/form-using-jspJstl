<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%--  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> --%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
</head>

<body>

    <div style="border: 5px royalblue dotted; font-size: 20px; text-align: center; margin: 10% 25% 10% 25%;">

        Name:
        <c:out value="${param.name}" />
        <br><br>
        Mobile:
        <c:out value="${param.mobile}" />
        <br><br>
        Email:
        <c:out value="${param.email}" />
        <br><br>
        City:
        <c:out value="${param.city}" />
        <br><br>
        State:
        <c:out value="${param.state}" />
        <br><br>
        Country:
        <c:out value="${param.country}" />
        <br><br>

        <c:url var="entry" value="register">

            <c:param name="name" value="${param.name}" />
            <c:param name="mobile" value="${param.mobile}" />
            <c:param name="email" value="${param.email}" />
            <c:param name="city" value="${param.city}" />
            <c:param name="state" value="${param.state}" />
            <c:param name="country" value="${param.country}" />

        </c:url>
        <a href="${entry}"> submit data</a>
       
    </div>


</body>

</html>