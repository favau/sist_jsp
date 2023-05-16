<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[실습]회원가입</title>
	<script>
		window.onload = function(){
			if(){

		}
		//이벤트 연결
		myForm.onsubmit = function(){
			if(!check(document.getElementById('name'),"이름"))
		};

		function check(item,name) {
			let check_item = document.getElementById();
			if (item.value.trim() == '') {
				alert(name + "필수");
				item.value = '';
				item.focus();
				return false;
			}
			return true;
		}
		};
	</script>
</head>
<body>
<form action="s06_register.jsp" method="post"
                                id="myForm">
	이름 : <input type="text" name="name"
	                size="10" id="name"><br>
	ID : <input type="text" name="id"
	                size="10" id="id"><br>
	비밀번호 : <input type="password" 
	           name="password" size="10"
	                     id="password"><br>
	전화번호 : <input type="text" name="phone"
	            size="30" id="phone"><br>
	취미 :
		<input type="checkbox" name="hobby"
		               value="영화보기">영화보기 
        <input type="checkbox" name="hobby"
		               value="음악감상">음악감상
		<input type="checkbox" name="hobby"
		               value="등산">등산
		<input type="checkbox" name="hobby"
		               value="낚시">낚시	
		<input type="checkbox" name="hobby"
		               value="댄스">댄스
	<br>
	자기소개<br>
	<textarea rows="5" cols="60" 
	  name="content" id="content"></textarea>
	<br>
	<input type="submit" value="전송">  		               	               		                                                                                        
</form>
</body>
</html>


