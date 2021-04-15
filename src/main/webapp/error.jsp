<%@ page isErrorPage="true" contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>error</title>
</head>
<body>
获取异常
<%=exception.toString()%>
<%=exception.getMessage() %>
</body>
</html>
