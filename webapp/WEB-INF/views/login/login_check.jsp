<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>애견수첩 로그인</title>
<c:choose>
	<c:when test="${login.id != memberDTO.id}">
		<script type="text/javascript">
			alert("가입되지 않은 아이디,비밀번호 입니다.")
			history.back();
		</script>
	</c:when>
	<c:when test="${login.password != memberDTO.password}">
		<script type="text/javascript">
			alert("비밀번호가 맞지 않습니다.")
			history.back();
		</script>
	</c:when>
	<c:otherwise>
		<script type="text/javascript">			
			location.href="./PetMemberInsert"
		</script>
	</c:otherwise>
</c:choose>
</head>
<body>
</body>
</html>