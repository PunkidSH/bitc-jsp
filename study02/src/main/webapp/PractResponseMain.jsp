<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 24. 6. 19.
  Time: 오후 5:53
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
<div class="container mt-5 ">
  <%
    String logErr = request.getParameter("logErr");
    if (logErr != null) out.print("당신은 진정한 신자가 아닙니다.");
  %>
      <form action="/PractResponseLogin.jsp" method="post">
        <div>
          <label for="userId" class="form-label"></label>
          <input type="text" class="form-control" id="userId" name="userId" placeholder="대상혁의 닉네임를 입력해 주세요.">
        </div>
        <div>
          <label for="userPw" class="form-label"></label>
          <input type="password" class="form-control" id="userPw" name="userPw" placeholder="대상혁이 누군지를 입력해 주세요.">
        </div>
        <div class="d-grid mt-4">
          <button type="submit" class="btn btn-primary">로그인</button>
        </div>
      </form>
  </div>
</body>
</html>
