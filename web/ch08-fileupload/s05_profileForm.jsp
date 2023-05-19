<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로필 사진 업로드 폼</title>
<script type="text/javascript">
window.onload=function(){
	//이미지가 표시되는 태그
	let image = document.getElementById('image');
	//전송 버튼
	let submit_btn = 
		document.getElementById('submit_btn');
	
	let file = document.getElementById('file');
	//이벤트 연결
	file.onchange=function(){
		if(!file.files[0]){
			image.src='/ch07-JspMain/images/face.png';
			submit_btn.style.display = 'none';
			return;
		}
		
		let reader = new FileReader();
		//이미지 읽기
		reader.readAsDataURL(file.files[0]);
		reader.onload=function(){
			//읽어들인 이미지를 img 태그에 표시
			image.src = reader.result;
			submit_btn.style.display = '';
		};
	};
};
</script>
</head>
<body>
<h2>프로필 사진 업로드하기</h2>
<img id="image" src="/ch07-JspMain/images/face.png"
                width="200" height="200">
<form action="s06_profile.jsp" method="post"
               enctype="multipart/form-data">
  <input type="file" name="file" id="file"
       accept="image/png,image/jpeg,image/gif">
  <input type="submit" value="전송"
           style="display:none;" id="submit_btn">                    
</form>                
</body>
</html>




