<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
</head>
<body>
	<form action="searchPw" method="post">
	아이디 : <input type="text" name="memberId" required>
	휴대번호 : <input type="text" name="memberPhone" required>
	<input type="submit" value="비밀번호 찾기">
	
	</form>
	
	<input type="hidden" name="searchResult" id="searchResult" value="${searchResult }">
	<input type="hidden" name="searchPw" id="searchPw" value="${searchPw }">
	<script type="text/javascript">
		var searchResult = $('#searchResult').val();
		var searchPw = $('#searchPw').val();
		console.log('searchResult = ' + searchResult);
		console.log('searchPw = ' + searchPw);
		if (searchResult == 'fail'){
			alert('일치하는 회원 정보가 없습니다.')
		}
	</script>
	
</body>
</html>