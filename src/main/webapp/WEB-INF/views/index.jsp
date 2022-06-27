<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<jsp:include page="include/header.jsp"></jsp:include>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>

@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500&display=swap'); /* font-family: ' Noto Sans KR', sans-serif; */
* {
	margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
}  
#headerid a{
    font-family: 'Noto Sans KR', sans-serif;
    font-size: 16px;
    font-weight: 400;
}    
.container{
    margin: 0 auto;
    width: 1200px;
}
#headerid{
    border-bottom: 1px solid #d6d6d6;
}
#headerid .container{
    height: 70px;
    display: flex;
    justify-content: space-between;
    align-items: center;
}
#headerid .nav a{
    color: black;
    text-decoration: none;
    padding: 10px 20px;
}
.header_name ul li {
    display : inline-block;
}

.boxround {
    width: 238px; height: 178px;
    border-radius: 10px;
	overflow:hidden
}
.boxcover img{
    width : 100%;
    height : 100%;
    object-fit: cover; 
}
.flex{
    display: flex;
}
.flex-item-align-center{
    align-items: center;
}
.flex-justify-evenly{
    justify-content: space-evenly;
}
.flex-justify-between {
    justify-content: space-between;
}
.flex-justify-end{
    justify-content: end;
}
.ml-20{
    margin-left: 20px;
}
.text-end{
    text-align: end;
}
.subtext {
    font-family: 'Noto Sans KR', sans-serif;
    font-size: 18px;
}

.titletext {
    font-family: 'Noto Sans KR', sans-serif;
    font-size: 52px;
}
.titletextpt {
    font-family: 'Noto Sans KR', sans-serif;
    font-size: 52px;
    color : #0b86ee;
}
.extext {
    font-family: 'Noto Sans KR', sans-serif;
    font-size: 14px;
    color : #191919;
}
.maintext {
    font-family: 'Noto Sans KR', sans-serif;
    font-size: 48px;
}
.subtextw {
    font-family: 'Noto Sans KR', sans-serif;
    font-size: 18px;
    color: white;
    font-weight: 300;
}
.titletextw {
    font-family: 'Noto Sans KR', sans-serif;
    font-size: 52px;
    color: white;
}
.maintextw {
    font-family: 'Noto Sans KR', sans-serif;
    font-size: 48px;
    color: white;
}
.smalltext {
    font-family: 'Noto Sans KR', sans-serif;
    font-size: 16px;
}
.padding-con {
    padding: 0px 80px;
}
.maintitle {
    margin-top: 70px;
}
.margin10 {
    margin : 10px;

}
.padding80 {
    padding-left: 80px;
}
.py-30{
    padding: 30px 0;
}
#mainfreesource {
    background-color: #f2f2f8;
    height: 460px;
}
#freesource {
    display: flex;
    justify-content: space-between;
    align-items: center;
}
.text-center{
    text-align: center;
}
#mainContents {
    padding-bottom: 95px;
}
.qnabackground {
    background-image: url(resources/image/qnamain.png);
    background-repeat: no-repeat;
    background-size: contain;
    background-position: center;
    height: 550px;
}
.paddingright80 {
    padding-right: 5px;
}
.marginb10 {
    margin-bottom : 10px;
}
#requestmain {
    background: #25282f;
    background-image: url(resources/image/requestmain.png);
    background-repeat: no-repeat;
    background-size: contain;
    background-position: center;
    height: 550px;
}
.margin154 {
    margin-top: 154px;
}
.padding-top {
    padding-top: 110px;
}

.margin20 {
    margin-top: 20px;
    margin-bottom: 20px;
}
#maker {
    background-image: url(resources/image/maker.png);
    background-repeat: no-repeat;
    background-size: contain;
    background-position: center;
    height: 550px;
}
.padding-top2 {
    padding-top: 75px;
}
#otherdesign {
    background-image: url(resources/image/computer.png);
    background-repeat: no-repeat;
    background-size: contain;
    background-position: center;
    height: 550px;
}
.padding-top3 {
    padding-top: 130px;
}
#terms {
    background-color: #f1f1f2;
    background-repeat: no-repeat;
    background-size: contain;
    background-position: center;
    height: 260px;
}
.paddingleft {
    padding-left: 490px;
    padding-top: 55px;
}
.subtext1 {
    font-family: 'Noto Sans KR', sans-serif;
    font-size: 16px;
    font-weight: 400;
}
.padding-right {
    padding-right : 35px;
}
.paddingterms {
    padding-bottom: 90px;
}
.paddingleft1 {
    padding-left : 490px;
}
.paddingright2 {
    padding-right : 115px;
}
.paddingleft2 {
    padding-left: 16px;
}
.padding-top55 {
    padding-top: 55px;
}
.terms_text {
    font-family: 'Noto Sans KR', sans-serif;
    font-size: 14px;
    color : #6e6e6e;
}
.padding-top45 {
    padding-top: 45px;
}
#aside {
	position: sticky;
	top: 0;
}
</style>
    
</head>
<body>

	 <div id ="mainContents">
        <div class="container flex flex-justify-evenly padding80">
            <div>
                <div class = "maintitle">
                    <p class="titletext">Share the design.</p>
                    <p class="titletext">The design</p>
                    <p class="titletext">you're looking for.</p>
                    <p class="titletextpt">Free source.</p>
                    <p class="extext">Logo, business card, photo, ppt, illustration,<br> and other materials.</p>
                    <div class="margin10"></div>
                </div>
                <div>
                    <a href="free_source/"><img src = "resources/image/share_it.png"></img></a>
                </div>
            </div>
            <div class="maintitle"><img src ="resources/image/Computer_phone.png"></img></div>
        </div>
       
       
    </div>
 
    <div id = "mainfreesource">
        <div class="free_source container padding-con py-30">
            <div class="text-center py-30">
                <p class="maintext">Free source</p>
                <p class="subtext">Types of designs</p>
            </div>
 
            <div class = "free_source_box flex flex-justify-evenly">
                <div>
                    <div class = "boxround boxcover">
                        <a href=""><img src ="resources/image/freebox1.png"></a>
                    </div>
                    <p class="smalltext">PPT</p>
                </div>
                <div>
                    <div class="boxround boxcover">
                        <a href=""><img src ="resources/image/freebox2.png"></a>
                    </div>
                    <p class="smalltext">Logo</p>
                </div>
                <div>
                    <div class="boxround boxcover">
                        <a href=""><img src ="resources/image/freebox3.png"></a>
                    </div>
                    <p class="smalltext">Business card</p>
                </div>
                <div>
                    <div class="boxround boxcover">
                        <a href=""><img src ="resources/image/freebox4.png"></a>
                     </div>
                     <p class="smalltext">Picture</p>
                </div>
               
            </div>
           	
        </div>
    </div>
 
    <div id="qnamain">
   
        <div class="qnabackground container padding-con flex flex-justify-end flex-item-align-center">
            <div class="text-end paddingright80 ">
                <p class="titletext">Q / A</p>
                <p class="maintext">Ask questions</p>
                <p class="maintext">Find the answer</p>
                <p class="subtext marginb10">We'll tell you all about the questions you want.</p>
                <a href="qna/"><img src="resources/image/Ask_now.png"></a>
            </div>
        </div>
    </div>
   
   
    <div id="requestmain" class="padding-top">
        <div class="container padding80">
            <div class="">
                <p class="titletextw">Request</p>
                <p class="maintextw">Ask for the design</p>
                <p class="maintextw">solve it quickly.</p>
                <p class="subtextw margin20">You can always ask for it.</p>
            </div>
            <div>
                <a href="request/"><img src="resources/image/request_now.png"></a>  
            </div>
        </div>
    </div>
   
    <div id="maker">
        <div class="container text-center padding-top2">
            <p class="maintext">Maker</p>
            <p class="subtext">You're always welcome.</p>
         </div>
        </div>
   
    <div id = "otherdesign" class="container padding-top3 padding-con">
        <div class="text-end paddingright80">
            <div class="margin-right10">
                <p class="titletext">Work</p>
                <p class="maintext">Share your Design</p>
                <p class="maintext">with others</p>
                <p class="subtext margin20">Show off your work to everyone.</p>
            </div>    
            <div>
                <a href=""><img src="resources/image/share_it.png"></img></a>
            </div>
        </div>
    </div>
   
   
    <div id="terms">
        <div class="flex flex-justify-between container">
            <div class="flex padding-top55">
                <p class="subtext1 padding-right">이용약관</p>
                <p class="subtext1 padding-right">개인정보처리방침</p>
                <p class="subtext1 padding-right">저작권안내</p>
                <p class="subtext1">전화번호안내</p>
            </div>
 
            <div class="paddingright2 padding-top45">
                <a href="https://ko-kr.facebook.com/" class=""><img src="resources/image/facebook.png"></a>
                <a href="https://www.instagram.com/?hl=ko" class="paddingleft2"><img src="resources/image/inctergram.png"></a>
                <a href="https://www.kakaocorp.com/page/service/service/KakaoTalk" class="paddingleft2"><img src="resources/image/talk.png"></a>
                <a href="https://www.youtube.com/" class="paddingleft2"><img src="resources/image/youture.png"></a>
            </div>
 
           
        </div>
       
        <div class="terms_text container padding-top55">
            <p>Email rudghks089@gmail.com | TEL 010-5844-1911 | Representative Ji Kyoung Hwan</p>
            <p>COPYRIGHT 2022 Joy. ALL RIGHTS RESERVED.</p>
        </div>
 
    </div>
	
	
</body>
</html>