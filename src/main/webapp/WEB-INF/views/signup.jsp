<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link href="/resources/css/cssstyle.css" rel="stylesheet" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    }
.signupbox {
    background-color: white;
    border: 1px solid #6c6e72;
    width: 809px; height: 760px;
    border-radius: 10px;
    overflow:hidden
}
.signuptext {
    font-family: 'Noto Sans KR', sans-serif;
    font-size: 80px;
    font-weight: 500;
}
.paddingtop40 {
    padding-top: 40px;
}
.marginbottom108 {
    margin-bottom: 108px;
}
.paddingbox {
    padding-top: 65px;
    padding-left: 78px;
}
.marginbug {
	margin: 0 auto;
}
.checkbox {
	background-color: #0e7bd7;
    border: none;
    width: 78px; height: 37px;
    border-radius: 18px;
    font-family: 'Noto Sans KR', sans-serif;
    font-size: 16px;
    font-weight: 400;
    color: white;
    text-decoration: none;
}
</style>
    
<script>
	function check_id_Sync() {
	   const form = document.getElementById("signup_form");
	   
	   const xhr = new XMLHttpRequest();
	   
	   xhr.open("GET", "checkId?id=" + form.id.value, false);
	   xhr.send();
	   
	   const result = xhr.responseText;
	   
	   if(result == "OK") {
	      alert(`[동기] \${form.id.value} 는 사용가능한 아이디 입니다`);
	      form.checkId.value = form.id.value;
	   }      
	   else
	      alert(`[동기] \${form.id.value} 는 이미 사용중인 아이디 입니다`);
	}   

	function check_id_Async() {
	   const form = document.getElementById("signup_form");
	   const xhr = new XMLHttpRequest();
	
	   xhr.onreadystatechange = function() {
	      console.log(xhr.readyState);
	      
	      if(xhr.readyState == XMLHttpRequest.DONE) {
	         if(xhr.status == 200) {
	            const result = xhr.responseText;
	            
	            if(result == "OK") {
	               alert(`\${form.email.value} 는 사용가능한 이메일 입니다`);
	               form.checkId.value = form.email.value;
	            }               
	            else
	               alert(`\${form.email.value} 는 이미 사용중인 이메일 입니다`);         
	         }
	      }
	   }
	   xhr.open("GET", `checkId?id=\${form.email.value}`, true);
	   
	   xhr.send(); //값을 받아오면 readystate 값 이 바뀐다 그러면 onreadystatechange 값이 변경되면서 함수 실해
	   // readystate 이란 400 300 200 이란 것이다 대신 성공 했을때만 사용 가능한 아이디라 알리고 formcheck 아이디값을 넣어주기
	   
	}


	function check_name_Sync() {
	   const form = document.getElementById("signup_form");
	   const xhr = new XMLHttpRequest();

	   xhr.onreadystatechange = function() {
	      console.log(xhr.readyState);
	      
	      if(xhr.readyState == XMLHttpRequest.DONE) {
	         if(xhr.status == 200) {
	            const result = xhr.responseText;
	            
	            if(result == "OK") {
	               
	               form.checkname.value = form.name.value;
	               signup();
	            }               
	            else
	               alert(`\${form.name.value} 는 이미 사용중인 아이디 입니다`);         
	         }
	      }
	   }

	   xhr.open("GET", `checkname?name=\${form.name.value}`, true);
	   
	   xhr.send(); //값을 받아오면 readystate 값 이 바뀐다 그러면 onreadystatechange 값이 변경되면서 함수 실해
	   // readystate 이란 400 300 200 이란 것이다 대신 성공 했을때만 사용 가능한 아이디라 알리고 formcheck 아이디값을 넣어주기
	   
	}

	function signup() {
		
	   const form = document.getElementById("signup_form");
	   const regx = /^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=()]).*$/;
	   
	   
	   if(form.checkId.value != form.email.value) { //여기서 값이 같은거 확인
	      alert("아이디 중복검사를 해 주세요");
	      return;
	   }
	   if(form.name.value == "") {
		      alert("이름을 입력 해 주세요");
		      form.id.focus();
		      return;
		   }
	   
	   if(form.email.value == "") {
	      alert("이메일을 입력 해 주세요");
	      form.id.focus();
	      return;
	   }
	   
	   if(form.passwd.value == "") {
	      alert("비밀번호를 입력 해 주세요");
	      form.passwd.focus();
	      return;
	   }
	   if(!regx.test(form.passwd.value)){
		   alert("비밀번호 형식을 지켜주세요");
		   form.passwd.focus();
		   return;
	   }
	   
	   if(form.passwd_confirm.value == "") {
	      alert("비밀번호 확인를 입력 해 주세요");
	      form.passwd_confirm.focus();
	      return;
	   }
	
	   
	   if(form.passwd.value != form.passwd_confirm.value) {
	      alert("비밀번호와 비밀번호 확인이 일치하지 않습니다");
	      form.passwd.value == "";
	      form.passwd_confirm.value == "";
	      form.passwd.focus();
	      return;
	   }
	   
	 
	   form.submit();//회원가입 을 타입으로 따로 지정해줘서 결과값 전달을 해줘야함
	
	}
		
	function press(){ 
		if(event.keyCode == 13){ //javascript에서는 13이 enter키를 의미함 
			
			check_name_Sync();
			//formname.submit(); //formname에 사용자가 지정한 form의 name입력 
		} 
	}
	
</script>

</head>
<body>
	<jsp:include page="include/header.jsp"></jsp:include>
	

	<div id = "logo" class="container logopadding">
        <a href="" class=""><img src = "/resources/image/loginlogo.png"></a>
    </div>

    <div class="signupbox marginbottom108 marginbug">
        <div>
            <p class="signuptext text-center">Sign up</p>
        </div>

		<form id = "signup_form" method = "post">
			<input type = "hidden" name = "checkId">
			<input type = "hidden" name = "checkname">
	        <div class="paddingtop110 flex">
	
	            <div class="paddingright5">
	                    <img src="/resources/image/usericon.png" class="padding107">
	            </div>
	            <div>
	                <input type = "text" name = "name" class="message_email emailtext" placeholder="Name" onkeypress="press()"></input>
	            </div>
	        </div> 
	        <div>
	            <hr class="hremail container">
	        </div>
	
	        <div class="paddingtop40 flex">
	
	            <div class="paddingright5">
	                    <img src="/resources/image/emailimg.png" class="padding107">
	            </div>
	            <div>
	                <input type = "text" name = "email" class="message_email emailtext" placeholder="Email" onkeypress="press()"> <button type = "button" onclick = "check_id_Async()" class = "checkbox">Check</button>
	            </div>
	        </div> 
	        <div>
	            <hr class="hremail container">
	        </div>
	
	        <div class="paddingtop40 flex">
	
	            <div class="paddingright5">
	                    <img src="/resources/image/passwordimg.png" class="padding107">
	            </div>
	            <div>
	                <input type = "password" name = "passwd" class="message_email emailtext" placeholder="Password" onkeypress="press()"></input>
	            </div>
	        </div> 
	        <div>
	            <hr class="hremail container">
	        </div>
	
	        <div class="paddingtop40 flex">
	
	            <div class="paddingright5">
	                    <img src="/resources/image/passwordimg.png" class="padding107">
	            </div>
	            <div>
	                <input type = "password" name = "passwd_confirm" class="message_email emailtext" placeholder="Confirm Password" onkeypress="press()"></input>
	            </div>
	        </div> 
	        <div>
	            <hr class="hremail container">
	        </div>
	
	        <div class="paddingbox">
	            <button class="buttonboxcolor" type = "button" onclick = "check_name_Sync()">
	                <p class="boxsignup text-center lingheight">Sign up</p>
	            </button>
	            
	        </div>
	    </form>
    </div>
    
    <div class = "marginbottom108"></div>
    <jsp:include page="include/tfoot.jsp"></jsp:include>
</body>
</html>