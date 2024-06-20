<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 24. 6. 20.
  Time: 오후 2:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%--CookieManager, JSFunction 클래스 import--%>
<%@ page import="bitc.fullstack405.study03.util.CookieManager" %>
<%@ page import="bitc.fullstack405.study03.util.JSFunction" %>

<%
//  IdSaveMain 페이지에서 전달한 데이터를 가져옴
  String user_id = request.getParameter("user_id");
  String user_pw = request.getParameter("user_pw");
  String save_check = request.getParameter("save_check");

//  전달받은 데이터와 로그인 정보 데이터를 비교
  if ("must".equals(user_id) && "1234".equals(user_pw)) {

    if(save_check != null && save_check.equals("Y")) {
//      loginId 라는 이름의 쿠키명을 전달
//      실제 user_id도 함께 전달
//      CookieManager 클래스의 정적 메소드 makeCookie()를 호출하여 쿠키 생성
      CookieManager.makeCookie(response, "loginId", user_id, 86400);
    }
    else {
      CookieManager.deleteCookie(response, "loginId");
    }
//    JSFunction 클래스에서 정적 메소드로 선언한 alertLocation() 실행
    JSFunction.alertLocation("로그인에 성공했습니다.", "IdSaveMain.jsp", out);
  }
  else {
//    JSFunction 클래스에서 정적 메소드로 선언한 alertBack() 실행
    JSFunction.alertBack("로그인에 실패했습니다.", out);
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
