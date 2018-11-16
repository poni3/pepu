<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<script>
//todo - 추후 류발생시 메세지 출력 후 이동하게 변경
	var tempArr = (window.location.href).split('/');
	
	
	if(tempArr.indexOf('userList') == -1){
		location.href='userList';
	}
	
</script>


</body>
</html>