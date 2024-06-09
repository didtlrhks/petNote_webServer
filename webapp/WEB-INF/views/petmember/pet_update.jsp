<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>애견 정보 수정</title>
<link rel="shortcut icon" href="./images/log.jpg" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="./css/bootstrap.min_4.5.0.css">
<script src="./js/jquery-3.5.1.min.js" type="text/javascript"></script>
<script src="./js/bootstrap.min_4.5.0.js" type="text/javascript"></script>
<script src="./js/jquery.validate.min.js" type="text/javascript"></script>
<script src="./js/dept_validity.js" type="text/javascript"></script>
</head>
<body>
 <header id="main-header" class="py-2 btn-dark text-white">
  <div class="container">
   <div class="row">
    <div class="col-md-6">
     <h1>애완견 정보 수정</h1>
    </div>
   </div>
  </div>
 </header>
 <section class="py-4 mb-4 bg-light"></section>
 <section id="department">
  <div class="container">
   <div class="row">
    <div class="col-md-12">
     <div class="card">
      <div class="card-header">
       <h5>애견 정보를 수정할수있습니다</h5>
      </div>
      <div class="card-body">
       <form action="./PetUpdate" method="post" id="sign_dept">
        <fieldset>
         <div class="form-group row">
          <label for="name" class="ml-sm-3 col-form-label"> 이름 </label>
          <div class="ml-sm-3">
           <input type="text" name="name" id="name" class="form-control form-control-sm bg-white" value="${param.name}" >
          </div>
         </div>
       애완동물의 견종을 선택해주세요<br> (예시에 없어도 우리아이 특징으로 선택해주세요)<br> <br>
							<input type="checkbox" name="breed" id="breed" value="long">다리가
							긴종 ex)푸들,그레이 하운드 등 <br> <input type="checkbox" name="breed"
								id="breed" value="short">다리가 짧은 종 ex)닥스훈트,웰시코기 등<br>
							<input type="checkbox" name="breed" id="breed" value="nose">코가
							짧은 종 ex)시츄,불독,퍼그 <br> <input type="checkbox" name="breed"
								id="breed" value="ear">귀가 긴 종 ex)리트리버, 베틀링턴 등 <br>
								
         <br> 애완동물의 성별을 선택해주세요.<br> &nbsp; &nbsp; &nbsp; &nbsp;<input
								type="radio" name="gender" id="gender" value="여자"> 여자
							&nbsp; &nbsp;<input type="radio" name="gender" id="gender"
								value="남자">남자 <br>
								<br>
            <div class="form-group row">
          <label for="age" class="ml-sm-3 col-form-label"> 나이 </label>
          <div class="ml-sm-3">
           <input type="text" name="age" id="age" class="form-control form-control-sm" value="${petMemberDTO.age}">
          </div>
          </div>
           애완동물의 사이즈를 선택해주세요. <br> <input type="radio"
								name="psize" id="psize" value="대형견"> <input
								type="button" name="psize"
								style="background-color: grey; color: white; width: 150px; height: 50px"
								value="대형견 (10kg이상)"> <input type="radio" name="psize"
								id="psize" value="중형견"> <input type="button"
								name="psize"
								style="background-color: grey; color: white; width: 150px; height: 50px"
								value="중형견 (4kg이상 7kg이내)"> <input type="radio"
								name="psize" id="psize" value="소형견"> <input
								type="button" name="psize"
								style="background-color: grey; color: white; width: 150px; height: 50px"
								value="소형견(4kg이내)"> <br>
							<br>
         <div class="form-group">
          <button type="submit" class="btn btn-secondary">등록</button>
          <button type="reset" class="btn btn-secondary">취소</button>
         </div>
        </fieldset>
       </form>
       <div class="row">
        <div class="col-md-4">
         <a href="./PetList" class="btn btn-primary btn-block"> 애견 목록 </a>
        </div>
        <div class="col-md-4">
         <a href="./PetUpdate" class="btn btn-success btn-block"> 애견 등록 </a>
        </div>
        <div class="col-md-4">
         <a href="./PetDelete?deptno=${param.deptno}" class="btn btn-danger btn-block">애견 삭제 </a>
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