<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>애견 회원 가입</title>
 </head>
 <body>
  <script type="text/javascript">
  window.onload = function() {
  alert("입력하신 ${petDTO.name} 으로 가입 되었습니다.");
  location.href="./PetList";
  };
  </script>


</body>
</html>