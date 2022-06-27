<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link href="/resources/css/cssstyle.css" rel="stylesheet" />
    
<style type="text/css">
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
a { text-decoration: none; 
    font-family : 'Noto Sans KR', sans-serif;
    font-size: 24px;
    color: #0474d3;
    font-weight: 400; 
}
body {
    height:1080px;
}
.freemainimg {
    height: 568px;
    background-image: url(/resources/image/freemainimg.png);
}
.mainsub {
    font-family: 'Noto Sans KR', sans-serif;
    font-size: 32px;
    font-weight: 400;
    opacity: 80%;
}
.paddingtop134 {
    padding-top: 134px;
}
.searchbox {
    background-color: white;
    border: 1px solid #6c6e72;
    width: 705px; height: 62px;
    border-radius: 30px;
    overflow:hidden;
}
.search {
    font-family: 'Noto Sans KR', sans-serif;
    font-size: 22px;
    font-weight: 400;
    border: none;
    padding-left: 50px;
    width: 620px;
    height: 60px;
}

.searchicon {
	width: 60px;
    height: 60px;
    background-color: white;
    border: 0;
}

.searchborder {
    border: none;
}

.repeat {
    background-repeat: no-repeat;
}
.paddingbottom92 {
    padding-bottom: 92px;
}

.categorybox {
    font-family: 'Noto Sans KR', sans-serif;
    font-size: 24px;
    font-weight: 400;
    width: 200px;
    height: 76px;
    border: solid 1px;
    border-color: #0474d3;
}
.categorytext {
    font-family: 'Noto Sans KR', sans-serif;
    font-size: 24px;
    font-weight: 400;
    color: #0474d3;
    margin-top: 10px;  
}
.paddingtop18 {
    padding-top: 18px;
}
.paddingtop12{
    padding-top: 12px;
    line-height: 24px;
}
.paddingtop97 {
    padding-top: 97px;
}
.paddingtop34 {
    padding-top: 34px;
}
.paddingtop58 {
    padding-top: 58px;
}
.ppt_box{
    width : 91px;
}
.marginbottom20 {
    margin-bottom: 150px;
}
.paddingbottom50 {
    padding-bottom: 100px;
}
#id_container{
    display: inline-flex;
}
.paddingbox {
    padding: 32px;
}
.marginright34 {
    margin-right: 34px;
}
.paddingright34 {
    padding-right: 34px;
}
.paddingbottom77 {
    padding-bottom: 16px;
}
.paddingbottom144 {
    padding-bottom: 144px;
}
.paddingbottombox {
    padding-bottom: 3px;
}
.marginleftbox {
    margin-left: 1058px;
    margin-top: 30px;
}
.marginleftbox1 {
    margin-left: 1037px;
    margin-top: 30px;
}
.marginleftbox2 {
    margin-left: 840px;
    margin-top: 30px;
}
.marginleftbox3 {
    margin-left: 987px;
    margin-top: 30px;
}
.marginleftbox4 {
    margin-left: 1036px;
    margin-top: 30px;
}
.categorybox:hover {
    background-color: #0e7bd7;
    font-family : 'Noto Sans KR', sans-serif;
    font-size: 24px;
    color: white;
    font-weight: 400;
}
.categorybox:hover a{
    font-family : 'Noto Sans KR', sans-serif;
    font-size: 24px;
    color: white;
    font-weight: 400;
    
}
.gridcenter {
	margin: 0 auto;
	width: 705px;
}
.clicka {
	display:block;
	width: 100%;
	height: 100%;
}
.navbar_menu {
    display:flex;
    list-style: none;
    padding-left: 0;
}

.navbar_menu div:hover {
    background-color: 0e7bd7;
}
.maring-top20 {
	margin-top: 20px;
}
.paddingtop20 {
	padding-top: 20px;
}
.paddingheight {
	padding-top: 12px;
	line-height: 25px;
}
.marginbottm90 {
	margin-bottom: 92px;
}
.paddingmax {
	width: 100%;
	height: 100%;
	text-decoration: none;
	color: white;
	padding-top : 5px;
}
.imgboxmain {
    background-color: white;
    border: none;
    width: 383px; height: 215px;
    box-shadow: 5px 5px 10px 1px rgb(179, 183, 185) ;
    border-radius: 10px;
    overflow:hidden
}
</style>
    
</head>
<body>
    
    <!-- 헤더 -->
	<jsp:include page="../include/header.jsp"></jsp:include>
    
    <div class="freemainimg repeat marginbottm90">
        
            <div class=" text-center paddingtop134 container">
                <p class = "blackfont">Free source</p>
                <p class = "mainsub paddingbottom92">Welcome to our shared site.</p>
            </div>    

            <div class=" flex searchbox searchborder gridcenter">
                <input type="text" placeholder="Search" class="search">
                <button class="searchicon"><img src="/resources/image/selecticon.png"></button>
            </div>    

    </div>
	<!-- SubMenu -->
    <div class="flex container navbar_menu maring-top20">

        <div class="categorybox categorytext text-center"><a href="" class ="clicka paddingtop20">PPT</a></div>
        <div class="categorybox categorytext text-center"><a href="" class ="clicka paddingtop20">Logo</a></div>
        <div class="categorybox categorytext text-center"><a href="" class ="clicka paddingheight">Business<br>card</a></div>
        <div class="categorybox categorytext text-center"><a href="" class ="clicka paddingtop20">Picture</a></div>
        <div class="categorybox categorytext text-center"><a href="" class ="clicka paddingtop20">Illust</a></div>
        <div class="categorybox categorytext text-center"><a href="" class ="clicka"></a></div>
    </div>   

    <div class="container flex flex-justify-end paddingtop34">
    	<div class ="createbox flex flex-item-align-center">
       		<a href = "add" class = "paddingmax text-center">Create Post</a>
        </div>
    </div>
	
    <div class="container paddingtop58">
        <div class="container boldfont flex">
            <p class = "paddingbottombox">PPT</p>
            <a href="" class="marginleftbox"><img src="/resources/image/clich.png"></a>
        </div>
	        <div class="flex paddingbottom77 flex-justify-between">
	        	<c:forEach var = "item" items = "${list}">
		            <div class="imgbox ">
		                <a href=""><img alt="${item.category}" src="/upload/${item.thumbnail1.fullName}"></a>
		            </div>
	            </c:forEach>
	        </div>
	    
    </div>
          
        
    <div class="container paddingtop58">
        <div class="container boldfont flex">
            <p class = "paddingbottombox">Business card</p>
            <a href="" class="marginleftbox2"><img src="/resources/image/clich.png"></a>
        </div>
        <div class="flex paddingbottom77">
            <div class="imgbox marginright34">
                <a href=""><img src="/resources/image/businesscard(1).png"></a>
            </div>
            <div class="imgbox marginright34">
                <a href=""><img src="/resources/image/businesscard(2).png"></a>
            </div>
            <div class="imgbox">
                <a href=""><img src="/resources/image/businesscard(3).png"></a>
            </div>
        </div>
    </div>
    
    <div class="container paddingtop58">
        <div class="container boldfont flex">
            <p class = "paddingbottombox">Picture</p>
            <a href="" class="marginleftbox3"><img src="/resources/image/clich.png"></a>
        </div>
        <div class="flex paddingbottom77">
            <div class="imgbox marginright34">
                <a href=""><img src="/resources/image/picture(1).png"></a>
            </div>
            <div class="imgbox marginright34">
                <a href=""><img src="/resources/image/picture(2).png"></a>
            </div>
            <div class="imgbox">
                <a href=""><img src="/resources/image/picture(3).png"></a>
            </div>
        </div>
    </div>
    
    <div class="container paddingtop58 paddingbottom144">
        <div class="container boldfont flex">
            <p class = "paddingbottombox">Illust</p>
            <a href="" class="marginleftbox4"><img src="/resources/image/clich.png"></a>
        </div>
        <div class="flex paddingbottom77">
            <div class="imgbox marginright34">
                <a href=""><img src="/resources/image/illust(1).png"></a>
            </div>
            <div class="imgbox marginright34">
                <a href=""><img src="/resources/image/illust(2).png"></a>
            </div>
            <div class="imgbox">
                <a href=""><img src="/resources/image/illust(3).png"></a>
            </div>
        </div>
    </div>
    
    <!-- 푸터 -->
	<jsp:include page="../include/tfoot.jsp"></jsp:include>
	
</body>
</html>