<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 24. 6. 20.
  Time: 오후 12:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%
//  ajax 통신으로 전달한 데이터를 가져오기
//  html의 form을 통한 데이터 전달 시와 동일하게 사용할 수 있음
  String chkval = request.getParameter("inactiveToday");

  if (chkval != null && chkval.equals("1")) {
//    쿠키 생성
    Cookie cookie = new Cookie("PopupClose", "off");
//    현재 경로 가져오기
    cookie.setPath(request.getContextPath());
//    쿠키를 클라이언트에 저장하고 있을 기간 설정, 시간을 초(sec)로 계산
//    60(초) * 60(분) * 24(시간) = 하루 24시간
    cookie.setMaxAge(60 * 60 * 24);
//    응답 객체인 response에 쿠키 저장
    response.addCookie(cookie);
    out.println("쿠키 : 하루 동안 열지 않음");
  }
%>
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

</body>
</html>
