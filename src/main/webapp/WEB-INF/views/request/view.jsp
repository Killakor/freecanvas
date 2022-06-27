<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<jsp:include page="../include/header.jsp"></jsp:include>
<link href="/resources/css/cssstyle.css" rel="stylesheet" />
<style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500&display=swap'); /* font-family: 'Noto Sans KR', sans-serif; */
	
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}
       
.subbox {
 	background-image: url(/resources/image/subimg.png);
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
.boxtitle {
    width: 1000px; height: 50px;
    border-radius: 10px;
	box-shadow: 3px 3px 10px #c2c3c4;
}
.boxtitlefont {
	font-family: 'Noto Sans KR', sans-serif;
    font-size: 32px;
    font-weight: 400;
}
.boxfont {
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 28px;
	font-weight: 400;
	padding-left: 16px;
	padding-top: 5px;
}
.margintop10 {
   	margin-top: 10px;
}
.boxcontent {
	height: 700px;
   	border-radius: 10px;
   	box-shadow: 3px 3px 10px #c2c3c4;
   }
.marginleft30 {
	margin-left: 30px;
	margin-right: 30px;
}
.boxcontent{
	padding: 12px;
	overflow: scroll;
	margin-bottom: 50px;
}
.boxcontent p {
	display: block;
	margin: 0 auto;
} 
.buttonupdate {
	background-color: #0e7bd7;
    width: 170px; height: 35px;
    border-radius: 17px;
    border: none;
}
.buttonupdatefont {
	font-family: 'Noto Sans KR', sans-serif;
    font-size: 16px;
    font-weight: 300;
    color: white;
}
.buttonboxview {
	background-color: #0b48b7;
    width: 115px; height: 35px;
    border-radius: 17px;
    border: none;
}
.marginbottom50 {
	margin-bottom: 50px;
}
.atextone {
    color: white;
    text-decoration: none;
    display: block;
	width: 100%;
	height: 100%;  
}
.atext {
    color: white;
    text-decoration: none;
}
.paddingtop10 {
	padding-top: 5px;
}
.marginright20 {
	margin-right: 20px;
}
.textareabox {
	width: 1000px;
}
.tiplymaintext {
	font-family: 'Noto Sans KR', sans-serif;
    font-size: 22px;
    font-weight: 400;
}
.margintop4 {
	margin-top: 16px;
	margin-bottom: 20px;
}
.tiplytext {
	font-family: 'Noto Sans KR', sans-serif;
    font-size: 16px;
    font-weight: 300;
}
.tiplybox {
	background-color: #0e7bd7;
    width: 115px; height: 35px;
    border-radius: 17px;
    border: none;
}
.margintop16 {
	margin-top: 12px;
}
.margintop10 {
 	margin-top: 5px;
}
.replytext {
	background-color: white;
	width: 1000px;
	height: 70px;
	border: 1px solid #b6b6b6;
}
.replyfont {
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 16px;
	font-weight: 300;
}
.buttonreply {
	background-color: #0b48b7;
	width: 60px;
	height: 30px;
	border-radius: 15px;
	border: none;
	margin-top: 10px;
	margin-bottom: 10px;
	margin-right: 10px;
	color: white;
}
.displayline {
	display: inline;
}
.marginbottom5 {
	margin-bottom: 5px;
}
.hide {
	display: none;
}
.block {
	display: block;
}
.blockinline {
	display: inline-block;
}
.inlineblock {
	white-space: nowrap;
}
p[replytext] {
	background-color: white;
	width: 1000px;
	height: 70px;
	border: 1px solid #b6b6b6;
}
</style> 

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script>
	function div_show() {
		document.getElementsByClassName("main.button")[0].style.display ="block";
		
	}

	function check_name_Sync() {
		   const writer = `${item.name}`;
		   const name = `${sessionScope.user.name}`;
		   
		   if(writer != name) {
			   event.preventDefault();
			   alert("작성자가 아닙니다.");
		   }
	}
	
	function createReplyBox(item){
		const {name, reply_text, reg_date, reply_code} = item;
		const main = $(`<div data-reply="\${reply_code}" class ="contentcontainer replyfont">`);
		const date = new Date(reg_date);
		const year = date.getFullYear();
		const mon = date.getMonth()+1;
		const day = date.getDate();
	
		main
		.append(`<div class="flex flex-justify-between marginbottom5 replyfont"><div>\${name}</div><div>\${year}-\${mon}-\${day}</div></div>`)
		.append($('<p class ="replytext replyfont">').text(reply_text))
		.append($('<button class ="delete buttonreply inlineblock">').text('삭제'))
		.append($('<button class ="update buttonreply update_hide inlineblock">').text('수정'))
		.append($('<button class ="update_button buttonreply hide inlineblock">').text('확인'));
		return main;
	}

	/* 댓글 등록 부분 */
	$(function() {
		
		
		const item = {
				number:`${item.number}`
		};
	
		$.ajax('/reply',{
				method: 'GET',
				dataType: 'json',
				contentType: 'application/json',
				data: item,
				success: function(reply_list) {
					
					if(!reply_list || reply_list.length < 1) return;
					
					const wrapper = $('.replymain');
					for(const item of reply_list) {
						const main = createReplyBox(item);
						
						wrapper.append(main);
					} 
					
					
					
				},
				error:function(xhr){
					console.log(xhr.statusText);
				}
			});
	
		$('.replymain').on('click', '.delete', function(){
			
			if(confirm("삭제하시겠습니까?")) {
				
				const code = $(this).parent().data('reply');
				$.ajax('/reply?code='+code, {
				method:'DELETE',
				success: result => {
						$(`div[data-reply="\${result}"]`).remove();
						return true;
					},
						
				});
					}else{
						return false;
						
						
					}
			error: xhr => console.log(xhr.statusText)
		});
		
		$('.replymain').on('click', '.update_hide', function(){
			$(this).toggleClass('hide');
			$(this).siblings('.update_button').toggleClass('hide');
			
			const value = $(this).siblings('.replytext').text();
			console.log(value);
			$(this).siblings('p.replytext').remove();
			$(this).siblings('.delete').before(`<textarea class = "replytext">\${value}</textarea>`);
		});
	});	
	$(function() {
			$('.replymain').on('click', '.update_button', function(){
				
				if(!replytext) {
					alert("내용이 없습니다.");
					return false;
				}
				
				
				$(this).toggleClass('hide');
				$(this).siblings('.update_hide').toggleClass('hide');
				
				
				
				const reply_code = $(this).parent().data('reply');
				const reply_text = $(this).siblings('textarea').val(); // document.getElementsByClassName("replytext").innertext;
				
				$(this).siblings('textarea').remove();
				$(this).siblings('.delete').before(`<p class = "replytext">\${reply_text}</p>`);
				
				const reply = {
						
						reply_code:reply_code,
						reply_text:reply_text
				
						
				};
				
				const code = $(this).parent().data('reply');
				
				$.ajax('/reply', {
					method:'PUT',
					data: JSON.stringify(reply),
					dataType: 'json',
					contentType: 'application/json',
					success: result => {
						
					const item = reply_text;	
					
					
					$('p.reply_code').append(item);
					},
					
					error: xhr => console.log(xhr.statusText)
				});
				
			});
	});
	
	function sendcomments() {
			const name = `${sessionScope.user.name}`;
			const number = `${item.number}`;
			const reply_text = document.getElementById("replytext").value;
			
			if(!reply_text) {
				alert("내용이 없습니다.");
				return;
			};
			const reply = {
					name:name,
					number:number,
					reply_text:reply_text
					
			};
			
			console.log(reply);
			
			$.ajax('/reply',{
				method:'POST',
				data: JSON.stringify(reply),
				dataType:'json',
				contentType:'application/json',	
				success:function(result){
					console.log(result.msg);
					document.getElementById("replytext").value='';
					const item = createReplyBox(result.item);
					$('.replymain').append(item);
				},
				error:function(xhr){
				console.log(xhr.statusText);
				}
			});
		};
</script>

</head>
<body>	

	<div class = "subbox">
		<p class = "subboxmain text-center paddingtop10">Request</p>
		<p class = "subboxsub text-center">Ask as much as you want.</p>
	</div>

	<div class ="contentcontainer padding-top50">
		
			<div>
				<label class ="boxtitlefont">Title</label>
				<h3 class = "boxtitle boxfont">${item.title}</h3>
			
			</div>
			
			<div class = "margintop10">
				<label class ="boxtitlefont">Content</label>
				<div class = "boxcontent">
					${item.writing}
				</div>
			</div>
			<div class = "flex flex-justify-between marginbottom50">
				<div class = "buttonupdatefont flex text-center ">

					<div class = "buttonboxview text-center marginright20"> 
						<a href = "/request/update/${item.number}" class = "buttonupdatefont paddingtop10 atextone"  onclick = "check_name_Sync()">수정</a>
					</div>
					<div class = "buttonboxview text-center">
					<a href = "/request/delete/${item.number}" class = "buttonupdatefont paddingtop10 atextone"  onclick = "check_name_Sync()">삭제</a>
					</div>
				</div>
				<div class = "buttonupdate buttonupdatefont text-center">
					<a href = "javascript:history.back()" class = "paddingtop10 atextone ">돌아가기</a>
				</div>
			</div>
		
	</div>
    
    <div class = "contentcontainer">
	    <div>
	    	<p class = "tiplymaintext">Comments</p>
	    	<hr class = "margintop10">
	    </div>
	    <div class ="margintop4">
	    	<textarea class = "textareabox tiplytext" id = "replytext" rows="3" placeholder="답글을 입력하세요"></textarea>
	    	<button class ="tiplybox buttonupdatefont margintop16" type = "button" onclick="sendcomments();">등록</button>
	    </div>
    </div>
    <div class="replymain">
		
	</div>
    
	<jsp:include page="../include/tfoot.jsp"></jsp:include>
</body>
</html>