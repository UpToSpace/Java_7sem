<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>

<h1>Task 1. Время суток:</h1>
<% String pageName = "morning.jsp";
    switch (((new Date()).getHours() + 2) / 6) {
    case 0: {
        out.print("<h2>Good night</h2>");
        pageName = "night.jsp";
        break;
    }
    case 1: {
        out.print("<h2>Good morning</h2>");
        pageName = "morning.jsp";
        break;
    }
    case 2: {
        out.print("<h2>Good afternoon</h2>");
        pageName = "afternoon.jsp";
        break;
    }
    case 3: {
        out.print("<h2>Good evening</h2>");
        pageName = "evening.jsp";
        break;
    }
}
%>

<h1>Task 2. Вывести таблицу:</h1>
<%SimpleDateFormat yy = new SimpleDateFormat("dd.MM.yyyy"); %>
<%SimpleDateFormat u = new SimpleDateFormat("u' ('E') '"); %>
<table>
    <% for (int i = 0; i < 7; i++) {
        Date dateNext = new Date(new Date().getTime() + 60*60*24*1000*i);%>
    <tr>
        <td><% out.print(yy.format(dateNext)); %></td>
        <td><% out.print(u.format(dateNext)); %></td>
    </tr>
    <% } %>
</table>

<h1>Task 5. Переход на страницу в зависимости от времени суток:</h1>
<form action="<%=pageName%>" method="get">
    <button type="submit">Press</button>
</form>

<h1>Task 6. JSP:INCLUDE</h1>
<jsp:include page="<%=pageName%>"/>
---

<h1>Task 7. Сервлет afternoon:</h1>
<jsp:include page="/Afternoon"/>
---

<h1>Task 8. Сервлет afternoon (forward):</h1>
<div>
<%--    <jsp:forward page="<%= pageName %>"/>--%>
</div>

<h1>Task 11 - 13. Jjj сервлет: </h1>
<a href="/lab4/Jjj?parm=forw">GET (Jjj) (forward) </a> <br/>
<a href="/lab4/Jjj?parm=hc">GET (Jjj) (HTTPClient) </a> <br/>
<form action="/lab4/Jjj" method="post">
    <button type="submit">Post Jjj</button>
</form>

</body>
</html>