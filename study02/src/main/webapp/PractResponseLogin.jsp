<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 24. 6. 19.
  Time: 오후 6:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device=width, initial-scale=1.0">
  <title>Title</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
          crossorigin="anonymous"></script>

</head>
<body>
<%
  String usId = request.getParameter("userId");
  String usPw = request.getParameter("userPw");

  if (usId.equals("faker") && usPw.equals("kinggod")) {
    response.sendRedirect("/PractResponseWelcome.jsp");
  }
  else {
    request.getRequestDispatcher("/PractResponseMain.jsp?logErr=1").forward(request, response);
  }
%>
</body>
</html>
