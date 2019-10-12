<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 10/13/2019
  Time: 1:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    //response.setHeader("Pragma", "no-cache");

    if(session.getAttribute("phonenumber")==null)
    {
        response.sendRedirect("login.jsp");
    }
    else
    {
        //response.sendRedirect("");  login hoile koi koi jaite chai ta
    }
%>

<%-- <a href="" for jekhane jete chai --%>

</body>
</html>
