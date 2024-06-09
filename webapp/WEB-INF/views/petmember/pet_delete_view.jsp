<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>애견 정보 삭제 </title>
</head>
<body>
<script type="text/javascript">
window.onload = function() {
	  alert("입력하신 ${petDTO.getName()} 이 삭제되었습니다.");
	  location.href="./PetList";
	  };
</script>
</body>
</html>