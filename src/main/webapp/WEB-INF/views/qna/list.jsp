<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<jsp:include page="../include/header.jsp"></jsp:include>
<link href="/resources/css/cssstyle.css" rel="stylesheet" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500&display=swap');

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}
#requestmainimg {
    background-image: url(../resources/image/QNA.png);
    background-repeat:no-repeat;
    height: 470px;  
}
.paddingtop84 {
    padding-top: 84px;
}
.paddingtop20 {
    padding-top: 10px;
}
.paddingtop86 {
    padding-top: 86px;
}
.requstmainbox {
    width: 247px;
    height: 64px;
    border-radius: 32px;
    background-color: #2a2929;
    margin-top: 86px;
    font-family: 'Noto Sans KR', sans-serif;
	font-size: 24px;
	font-weight: 500;
	color: white;
	border: none;
}
.paddingtop57 {
    padding-top: 57px;
}
.paddingtop20 {
	padding-top: 20px;
}
.paddingbottom15 {
	padding-bottom: 20px;
}
.paddingright50{
	padding-right: 245px;
}
.paddingbottom20 {
	padding-bottom: 10px;
}
.bordernone {
	border: none;
}
.bootfont {
	font-family: 'Noto Sans KR', sans-serif;
    font-size: 16px;
    font-weight: 400;
}
.containercenter {
	display: grid;
	place-content: center;
}  
.selectbox {
	background-color: white;
    width: 325px;
    height: 47px;
    border-radius: 23px;
    border: 1px solid #dcdee0;
}  
.message_select {
    width: 240px;
    height: 43px;
    border: none;
}
.paddingleft20 {
	padding-left: 20px;
}
.selectimg {
	background-color: white;
	border: 0px;
	outline: 0;
	padding-left: 2px;
}
.selectboxtext {
    font-family: 'Noto Sans KR', sans-serif;
    font-size: 15px;
    font-weight: 300;
    color: #828282;
}
.margin5 {
	margin: 5px;
}
.textplase {
	font-family: 'Noto Sans KR', sans-serif;
    font-size: 15px;
    font-weight: 300;
}
.subtext {
    font-family: 'Noto Sans KR', sans-serif;
    font-size: 18px;
    font-weight: 400;
}
#headerid .nav a{
    margin-top: 2px;
    margin-right: 5px;
}
.headeridimg{
    margin-bottom: 6px;
}
.bugdie {
	padding-bottom: 6px;
}
.acontent {
    color: black;
    text-decoration: none;
}

    </style>
</head>
<body>
 
    <div id = "requestmainimg">
        <div class="container text-center paddingtop84">
            <p class="titletext ">Q / A</p>
            <p class="titlesubtext paddingtop20">Do you have anything that you are curious about?</p>
            <div>
                <a href = "add"><button class="requstmainbox">Start writing</button></a>
            </div>
        </div>
    </div>
 
    
 
	<div class = "container">
		<div class="container text-center">
	        <p class="blackfont paddingtop57">Q / A</p>
	    </div>
	    
		<div class = "paddingbottom15">
			<form class = "flex-justify-end flex">
				
				
				<div class = "selectbox flex paddingleft20 selectboxtext">
					<input type = "text" name = "keyword" class = "message_select" value ="${pager.keyword}" placeholder="Search">
					<button class = "selectimg"><img src="/resources/image/select.png" class = "selectimg"></button>
				</div>
				
			</form>
		</div>
		
		<table class = "table table-sm text-center bootfont">
			<thead>
				<tr>
					<td>Number</td>
					<td>Title</td>
					<td>Name</td>
					<td>Date</td>
				</tr>
			</thead>
			
			<tbody>
				<c:forEach var ="item" items="${list}">
					<tr>
						<td>${item.number}</td>
						<td><a href = "view/${item.number}" class = "acontent">${item.title}</a></td>
						<td>${item.name}</td>
						<td>${item.regtime}</td>
						<%--<td><a href = "delete/${item.number}" class = "btn">삭제</a> <a href = "update/${item.number}" class ="btn">변경</a></td>--%>
					</tr>
				</c:forEach>
				<c:if test="${list.size() < 1}">
				<tr>
					<td colspan = "7">등록 된 제품이 없습니다</td>
				</tr>
				</c:if>
				
				
			</tbody>
			<tfoot>
				<tr>
					<td colspan = "7" class = "bordernone">
							<div class = "flex paddingtop20 ">
								<div class =""><a href="add" class = "btn btn-primary ">  Start writing  </a></div>
							</div>
							<div class = "flex">
								<c:if test="${sessionScope.admin != null}">
									<a href="dummy" class = "btn">대량등량</a>
									<a href="init" class = "btn">초기화</a>
									<a href = "delete" class = "btn">삭제</a>
								</c:if>
							</div>
							<div class = "containercenter paddingbottom20">
								<div class = "flex">
									<div class = "page-item"><a href = "?page=1&${pager.query}" class= "page-link">First</a></div>
									<div class = "page-item"><a href = "?page=${pager.prev}&${pager.query}" class= "page-link">Previous</a></div>
									<c:forEach var = "page" items = "${pager.list}">
										<div class = "page-item ${page == pager.page ? 'active' : ''}"><a href = "?page=${page}&${pager.query}" class = "page-link">${page}</a></div>
									</c:forEach>
									<div class = "page-item"><a href = "?page=${pager.next}&${pager.query}" class = "page-link">Next</a></div>
									<div class = "page-item"><a href = "?page=${pager.last}&${pager.query}" class = "page-link">Last</a></div>
								</div>
							</div>
					</td>
				</tr>
			</tfoot>
		</table>
	</div>
	
	
	<jsp:include page="../include/tfoot.jsp"></jsp:include>
	
	 <!-- Bootstrap Javascript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>