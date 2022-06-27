<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link href="/resources/css/cssstyle.css" rel="stylesheet" />

<style>

.titlefont {
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 18px;
	font-weight: 400;
	}
.categorybox {
	width:150px;
	height: 35px;
	font-family: 'Noto Sans KR', sans-serif;
    font-size: 18px;
	font-weight: 400;
	color : #171717;
}

.titlebox {
	width: 1000px;
	height: 35px;
}
.inline {
	display: inline-block;
}
.margintop50 {
	padding-top: 50px;
}
.subbox {
	background-image: url(../resources/image/freesub.png);
	height: 140px;
	background-repeat:no-repeat;
	border: 0;
}
.subboxmain {
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 42px;
	font-weight: 400;
}
 .subboxsub {
	font-family: 'Noto Sans KR', sans-serif;
    font-size: 28px;
    font-weight: 400;
    color: #525456;
}
 .paddingtop10 {
 	padding-top: 10px;
}
 .thumbnailbox {
 	background-image: url(../resources/image/camera.png);
 	width: 382px;
 	height: 215px;
}
 .displaynone {
	display:none;
}

.input-file-button {
	width: 100%;
	height: 100%;
	display: block;
	background-image: url(../resources/image/camera.png);
	background-repeat:no-repeat;
	border-radius: 10px;
	color: white;
	cursor: pointer;
}  
.image-uploadimg {
  		cursor: pointer;
}
.boxtext {
	width: 1200px;
	height: 450px;
}
</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

</head>

    <!-- 헤더 -->
	<jsp:include page="../include/header.jsp"></jsp:include>
	
	<div class = "subbox">
			<h2 class ="subboxmain text-center paddingtop10">Free source</h2>
			<h3 class ="subboxsub text-center">Welcome to our shared site.</h3>
		</div>
	<div class = "container margintop50">
		
		
	   <div>
			<form id="uploadForm" method="post" enctype="multipart/form-data">
				<input type="hidden" value="${sessionScope.user.name}" name = "name">
					<div class= "flex flex-justify-between">
						<select name="category" class = "categorybox">
							<c:forEach var ="category" items="${list}">
								<option value="${category.category}">${category.contents}</option>
							</c:forEach>
						</select>
						
						<div>
							<input type="text" name="title" placeholder="Title" class= "titlebox titlefont">
						</div>
					</div>
				<div class ="flex">
					<div>
						<label>첨부파일:</label>
						<input type="file" name="fileupload">
					</div>
					
					
					
					<div>
						<label for="input-file">
							<img src="../resources/image/camera.png" class = "image-uploadimg">
						</label>
						<input type="file" name="thumbnail" id="input-file" class = "displaynone">
					</div>
				</div>	
					<div>
						<textarea type="text" name="writing" placeholder="Text" class = "boxtext titlefont"></textarea>
					</div>
				
				<div>
					<button id="upload" class = "">등록</button>
				</div>
			</form>
		</div>
	</div> 

	<!-- 푸터 -->
	<jsp:include page="../include/tfoot.jsp"></jsp:include>
   
     
  
</body>
</html>