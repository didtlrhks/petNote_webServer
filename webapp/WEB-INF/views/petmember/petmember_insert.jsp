
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	session.removeAttribute("id");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>애견 회원가입</title>
<link rel="shortcut icon" href="./images/log.jpg" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="./css/global.css">
<link rel="stylesheet" type="text/css" href="./css/all.min.css">
<link rel="stylesheet" type="text/css"
	href="./css/bootstrap.min_4.5.0.css">
<link rel="stylesheet" href="./css/bootstrap-datepicker.css">
<script src="./js/jquery-3.5.1.min.js" type="text/javascript"></script>
<script src="./js/bootstrap.min_4.5.0.js" type="text/javascript"></script>
<script src="./js/popper.min.js" type="text/javascript"></script>
<script src="./js/jquery.validate.min.js" type="text/javascript"></script>
<script src="./js/validity.js" type="text/javascript"></script>
<script src="./js/bootstrap-datepicker.js"></script>
<script src="./js/bootstrap-datepicker.ko.js"></script>
<script type="text/javascript">
$(function(){
	 $("#signupForm2").submit(function( ){
		// 해당 속성값과 같은 요소를 선택하고 선택한 요소의 속성값을 반환한다.
		/* if(!$("input[ nameCheck='name']").val( )) {
		
		alert(" 이름을입력하세요");
		
		$("input[nameCheck='name']").focus( );
		return false;
		
		} */
		var regexp_name= /^[가-힣]{2,4}$/;
		var name_check=$("input[name='name']").val();
		if(!regexp_name.test(name_check)){
			alert("이름은 공백을 제외한 한글 2~4자만 입력할수있다");
			$("input[name='name']").focus();
			
			return false;
		}
		//견종 유효성 검사
		if(!$("input[id='breed']").is(":checked")) {alert( "견종을 선택해주세요");
				// 선택한 요소의 특정 색인 번호가 있는 요소를 반환하고 음수를 설정하면 뒤에서부터 검색한다.
				$("input[name='breed']:eq(0)").focus( );
				return false;
				}
		if(!$("input[name='gender']").is(":checked")) {alert( "성별을 선택해 주세요");
		// 선택한 요소의 특정 색인 번호가 있는 요소를 반환하고 음수를 설정하면 뒤에서부터 검색한다.
		$("input[name='gender']:eq(0)").focus( );
		return false;
		}
if(!$("input[ name='age']").val( )) {
			
			alert(" 나이를 입력 해주세요");
			
			$("input[name='age']").focus( );
			return false;
			
			}
var regexp_name=/^[0-9]{1,3}$/;
var name_check=$("input[name='age']").val();
if(!regexp_name.test(name_check)){
	alert("나이는 공백을 제외한 숫자 1~3글자만 입력할수있습니다");
	$("input[name='age']").focus();
	
	return false;
}
if(!$("input[name='psize']").is(":checked")) {
	alert( "");
// 선택한 요소의 특정 색인 번호가 있는 요소를 반환하고 음수를 설정하면 뒤에서부터 검색한다.
$("input[name='psize']:eq(0)").focus( );
return false;

}
	 });
})
</script>
<script type="text/javascript">
	$(function() {
	
	
	 $("#dbnameCheck").click(function() {
		 var name = $('#name').val();
		 $.ajax({
		  url : './NameCheck',
		  type : 'get',

		  data : {
			  name : name
		  },
		  success : function(result) {

			  console.log("이름 값 - " + result.result);
			  if ($.trim(result.result) == 1) {
				  alert("이미 등록된 이름입니다.");
				  $("#name").focus();
			  }else if ($.trim(result.result) == 0) {
				  alert("등록할 수 있는 이름입니다.");
				  $('#nameCheck').val("1");
				  $("#name").focus();
			  }
		  }
		 });
	 });
$("input[name='name']").on("change", function() {
			
			$("#nameCheck").val(0);
		
	 console.log("1111체크값 - " + $("#nameCheck").val());
	 
		});
		
 });
	</script>
</head>
<body >
	<nav class="navbar navbar-expand-md bg-dark navbar-dark text-white">
		<div class="container">
			<div class="col-md-6">
				<h1>

					<i class="fas fa-users"></i> 애완동물 정보 입력칸
				</h1>
			</div>
			<div id="toggle" class="navbar-collapse collapse">
				<ul class="navbar-nav">
				</ul>
				<ul class="navbar-nav ml-auto">
					<li class="nav-item dropdown mr-3">
					<li class="nav-item"><a href="./MemberLogin" class="nav-link">
							<i class="fas fa-user-circle mr-sm-1"></i> 로그인
					</a></li>
				</ul>
				<ul class="navbar-nav py-2 mb-2 pl-3 pr-3">
					<li><a href="./pets" class="navbar-brand"> <i
							class="fa fa-home"></i>홈
					</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<header id="main-header" class="py-2 bg-secondary"> </header>
	<section class="py-3 mb-3 bg-light">
		<div class="container">
			<div class="row col-md-12"></div>
		</div>
	</section>
	<section id="petmember">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="card-header">
							<h3 class="text-muted">
								<i class="fas fa-user-edit mr-sm-1" ></i> 정확한 진단을 위해 세세하게 작성해주세요&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
								&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
								<button type="button" onclick="location.href='./PetList'" class="btn btn-outline-primary mr-sm-1">
									 애견 LIST
								</button>
							</h3>
						</div>
						<form action="./PetMemberInsert" method="post" id="signupForm2"
							enctype="application/x-www-form-urlencoded">

							이름:<input type="text" name="name" placeholder="이름을 입력해주세요"
								id="name"><br>
							<br>

							<div class="pl-0">
								<button type="button" class="btn btn-outline-secondary"
									id="dbnameCheck">중복체크</button>
								<input type="hidden" name="nameCheck" id="nameCheck">
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
							<br> 나이(대강 년수로만 )적어주세요<br> <input name="age"><br>
							<br> 애완동물의 사이즈를 선택해주세요. <br> <input type="radio"
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



							<nav class="navbar justify-content-end">
								<button type="submit" class="btn btn-outline-primary mr-sm-1">
									<i class="fas fa-save mr-sm-1"></i> 애견 등록
								</button>
								<button type="reset" id="clear"
									class="btn btn-outline-warning mr-sm-1">
									<i class="fas fa-share-square mr-sm-1"></i> 등록 취소
								</button>
							</nav>

						</form>
					</div>
				</div>
			</div>
		</div>

	</section>
	<footer id="main-footer" class="bg-secondary text-white mt-3 p-3">
		<div class="container">
			<div class="row">
				<div class="col">
					<p class="lead text-center">
						<img src="./images/note.jpg" class="mr-sm-1"> 애견 수첩 &copy;
						
					</p>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>