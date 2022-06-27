<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<link href="/resources/css/cssstyle.css" rel="stylesheet" />
<script>
	function logoutconfirm(){
		if (!confirm("로그아웃을 하겠습니까?")) {
			event.preventDefault();
		}
	}
</script>

<div id = "headerid">

	<div class = "container padding-con padding-coon">
		<div class = "flex flex-item-align-center">
		<div class = "headeridimg">
			<a href = "/"><img src = "/resources/image/logo.png"></a>
		</div>
		
			<div class = "nav ml-20 subtext">
				<a href ="/free_source/">Free source</a>
				<a href ="/qna/">QnA</a>
				<a href = "/request/">Request</a>		
			</div>
		</div>
		<c:if test="${sessionScope.user == null}">
			<div class ="topspadding">
				<a href = "/login"><img src = "/resources/image/login_signup.png"></a>
			</div>
		</c:if>
		
		<c:if test="${sessionScope.user != null}">
				<div class = "flex ml-20 subtext topspadding bugdie">
					<div class ="nav ml-20 subtext rightblpadding ">${sessionScope.user.name}</div>
				
			
					<a href="/logout" onclick="logoutconfirm()"><img src = "/resources/image/logout.png"></a>
				</div>
		</c:if>
	</div>
</div>