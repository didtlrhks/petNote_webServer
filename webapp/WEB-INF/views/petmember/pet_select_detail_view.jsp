<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>애견 상세 정보</title>
<link rel="shortcut icon" href="./images/log.jpg" type="image/x-icon">
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

					<i class="fas fa-users"></i> 애견 상세정보
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
       <h5>애견 상세 보기</h5>
      </div>
      <div class="card-body">
       <table class="table table-hover">
        <thead class="thead-light">
         <tr class="text-center">
          <th>이름</th>
          <th>견종</th>
          <th>성별</th>
          <th>나이</th>
          <th>크기</th>
          
         </tr>
        </thead>
        <tbody>
         <tr class="text-center">
          <td>${list.name}</td>
          <td>${list.breed}</td>
          <td>${list.gender}</td>
          <td>${list.age}</td>
          <td>${list.psize}</td>
         </tr>
        </tbody>
       </table>
       <div class="row">
        <div class="col-md-4">
         <a href="./PetList" class="btn btn-primary btn-block"> 애견 목록 </a>
        </div>
        <div class="col-md-4">
         <a href="./PetUpdate?name=${list.name}" class="btn btn-warning btn-block"> 애견 수정 </a>
        </div>
        <div class="col-md-4">
         <a href="./PetDelete?name=${list.name}" class="btn btn-danger btn-block"> 애견 삭제 </a>
        </div>
       </div>
      </div>
     </div>
    </div>
   </div>
  </div>
 </section>
</body>
</html>