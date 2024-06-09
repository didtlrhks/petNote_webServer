<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>애완견 목록</title>
<link rel="shortcut icon" href="./images/log.jpg" type="image/x-icon">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="./css/bootstrap.min_4.5.0.css">
<link rel="stylesheet" type="text/css" href="./css/global.css">
<script src="./js/jquery-3.5.1.min.js" type="text/javascript"></script>
<script src="./js/bootstrap.min_4.5.0.js" type="text/javascript"></script>
</head>
<body>

 
 <nav class="navbar navbar-expand-md bg-dark navbar-dark text-white">
		<div class="container">
			<div class="col-md-6">
				<h1>

					<i class="fas fa-users"></i> 애완동물 리스트
				</h1>
			</div>
			<div id="toggle" class="navbar-collapse collapse">
				<ul class="navbar-nav">
				</ul>
				<ul class="navbar-nav ml-auto">
					<li class="nav-item dropdown mr-3">
					<li class="nav-item"><a href="./MemberLogin" class="nav-link">
							<i class="fas fa-user-circle mr-sm-1"></i> LOGIN
					</a></li>
				</ul>
				<ul class="navbar-nav py-2 mb-2 pl-3 pr-3">
					<li><a href="./pets" class="navbar-brand"> <i
							class="fa fa-home"></i>HOME
					</a></li>
				</ul>
			</div>
		</div>
	</nav>
 <section class="py-4 mb-4 bg-light"></section>
 <section id="department">
  <div class="container">
   <div class="row">
    <div class="col-md-12">
     <div class="card">
      <div class="card-header">
       <h5>서비스를 이용할 애완을 선택해주세요</h5>
      </div>
      <div class="card-body">
       <table class="table table-hover">
        <thead class="thead-light">
         <tr class="text-center">
          <th>이름</th>
          <th>견종</th>
          <th>나이</th>
          <th></th>
         </tr>
        </thead>
        <tbody>
         <%-- 객체를 호출하고 파라미터에 저장하여 반복한다.--%>
         <c:forEach var="list" items="${list}">
          <tr class="text-center">
           <td>${list.name}</td>
           <td>${list.breed}</td>
           <td>${list.age}</td>
           <td>
            <a href="./PetDetail?name=${list.name}" class="btn btn-outline-info"> 애완 상세 보기 </a>
           </td>
          </tr>
         </c:forEach>
         <%-- 객체값이 null일 경우에 반환한다.--%>
         <c:if test="${empty list}">
          <tr>
           <td colspan="4">등록된 애완견이 없습니다.</td>
          </tr>
         </c:if>
        </tbody>
       </table>
       <div>
        <a href="./PetMemberInsert" class="btn btn-success btn-block"> 애완견 추가 </a>
       </div>
      </div>
     </div>
    </div>
   </div>
  </div>
 </section>
</body>
</html>