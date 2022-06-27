<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<jsp:include page="../include/header.jsp"></jsp:include>
<link href="/resources/css/cssstyle.css" rel="stylesheet" />

<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

<style>
 	@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500&display=swap'); /* font-family: 'Noto Sans KR', sans-serif; */
	
	* {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
     .subbox {
     	background-image: url(../resources/image/qnaview.png);
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
	
	.padding-top50 {
		padding-top: 50px;
	}
	
	.titlefont {
		font-family: 'Noto Sans KR', sans-serif;
        font-size: 32px;
        font-weight: 400;
	}
	
	.titlebox {
		height: 50px;
		font-family: 'Noto Sans KR', sans-serif;
        font-size: 28px;
        font-weight: 400;
        color : #171717;
	}
	.contentcontainer{
            margin: 0 auto;
            width: 1000px;
        }
        
    .buttonWriting {
   			background-color: #0e7bd7;
            width: 170px; height: 35px;
            border-radius: 17px;
            border: none;
    }
    .buttonfont {
    	font-family: 'Noto Sans KR', sans-serif;
        font-size: 18px;
        font-weight: 300;
        color : white;
    }
    .margintop25 {
    	margin-top: 50px;
    	margin-bottom: 50px;
    }
    .fontwant {
    	font-family: 'Noto Sans KR', sans-serif;
        font-size: 18px;
        font-weight: 300;
    }
</style> 


<script>

</script>	
</head>
<body>	

	<div class = "subbox">
		<p class = "subboxmain text-center paddingtop10">Q / A</p>
		<p class = "subboxsub text-center">Do you have anything that you are curious about?</p>
	</div>

	<div class ="contentcontainer padding-top50">
		<form method = "post">
			
			<input type="hidden" value="${sessionScope.user.name}" name = "name">
			<div class = "form-group">
				<label for="title" class = "titlefont">Title</label>
				<input type = "text" class="form-control titlebox" name="title">
			</div>
			
			<div class = "form-group">
				<label for="content" class= "titlefont">Content</label>
				<textarea id="summernote" class="form-control" rows="5" id="content" name="writing"></textarea>
			</div>
			
			<div class = "flex flex-justify-end margintop25">
				<button class= "buttonWriting buttonfont">Writing</button>
			</div>
		</form>
	</div>
	
	<script>
    
        $('#summernote').summernote({
        	height: 700,                 // 에디터 높이
    		minHeight: null,             // 최소 높이
    		maxHeight: null,             // 최대 높이
    		focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
    		lang: "ko-KR",
        });
        
   
  	</script>
	
	<jsp:include page="../include/tfoot.jsp"></jsp:include>
</body>
</html>