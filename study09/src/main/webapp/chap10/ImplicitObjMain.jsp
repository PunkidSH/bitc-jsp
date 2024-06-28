<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 24. 6. 28.
  Time: 오전 9:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%
//  지시어를 사용하여 각 영역에 데이터 저장
  pageContext.setAttribute("scopeValue", "페이지 영역");
  request.setAttribute("scopeValue", "리퀘스트 영역");
  session.setAttribute("scopeValue", "세션 영역");
  application.setAttribute("scopeValue", "어플리케이션 영역");
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
<div class="container mt-5">
  <h2 class="text-center">ImplicitObjMain 페이지</h2>
  <h3 class="text-center">각 영역에 저장된 속성 읽기</h3>
  <h4>기존 방식</h4>
  <ul class="list-group">
    <li class="list-group-item">페이지 영역 : <%=pageContext.getAttribute("scopeValue")%></li>
    <li class="list-group-item">리퀘스트 영역 : <%=request.getAttribute("scopeValue")%></li>
    <li class="list-group-item">세션 영역 : <%=session.getAttribute("scopeValue")%></li>
    <li class="list-group-item">어플리케이션 영역 : <%=application.getAttribute("scopeValue")%></li>
  </ul>
  <br>

  <h4>EL 언어 사용</h4>
  <ul class="list-group">
    <li class="list-group-item">페이지 영역 : ${ pageScope.scopeValue }</li>
    <li class="list-group-item">리퀘스트 영역 : ${ requestScope.scopeValue }</li>
    <li class="list-group-item">세션 영역 : ${ sessionScope.scopeValue }</li>
    <li class="list-group-item">어플리케이션 영역 : ${ applicationScope.scopeValue }</li>
  </ul>
  <br>

  <h3>영역 지정 없이 속성 읽기</h3>
  <ul class="list-group">
    <li class="list-group-item">${ scopeValue }</li>
  </ul>
<%--  포워드 시 --%>
  <jsp:forward page="ImplicitForwardResult.jsp"></jsp:forward>
  <a href="ImplicitForwardResult.jsp" target="_blank" class="btn btn-link">페이지 이동</a>
</div>

</body>
</html>
