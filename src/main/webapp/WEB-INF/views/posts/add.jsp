<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script>
$(function(){
	   $("#list_code").click(function() {
	         const title=$("input[name ='title']").val();//선택자
	         const filename=$("input[name='fileUpload']")[0].files[0].name;
	         
	        appendItem(title,filename,result);
	   });
	   
	    $("#list").click(function(){
	      const title=$("input[name ='title']").val();//선택자
	      const filename=$("input[name='fileUpload']")[0].files[0].name;
	      
	       console.log(title);
	       console.dir(filename);
	       
	       let html="<tr><td>";
	       html += title;
	       html += "</td><td>";
	       html += filename;
	       html += "</td><td>삭제</td></tr>";
	       //innerHtml
	       const tbody =  $("tbody").html();
	       $("tbody").html(tbody + html);
	       
	    });

	      
	      $("#upload").click(function(){
	         const form =document.getElementById("uploadForm");
	         const formData = new FormData(form);
	         
	         const title = form.title.value;
	         const filename = form.fileUpload.files[0].name;
	         
	         $.ajax("upload_ajax",{
	             type:"POST",
	             url:"upload_ajax",
	             enctype:"multipart/form-data",
	             data:formData,
	             async:true,
	             cache:false,
	             contentType:false,
	             processData:false,
	             success:function(result){
	                alert("업로드성공");
	               
	                appendItem(title,filename,result);
	             },
	             error:function(xhr,status,err){
	                alert("업로드 실패:"+err);
	             }
	          
	          });
	       });
	   });
	</script>
</head>
<div>
   <h3>이미지 업로드 갤러리</h3>
   <div>
      <table border="1">
         <thead>
            <tr>
               <th>제목</th>
               <th>파일명</th>
               <th>설명</th>
               <th>관리</th>
            </tr>
         </thead>
         <tbody>
            <c:if test="${list.size()<1}">
               <tr><td>등록된 이미지가 없습니다</td></tr>
            </c:if>
            <c:forEach var="item" items="${list}">
            
            <tr>
               <td>${item.title}</td>
               <td><a href="upload/${item.number}" target="_blank">${item.filename}</a></td>
               <td>${item.writing}</td>
               <td><a href="delete/${item.number}">삭제</a></td>
            </tr>
            
            </c:forEach>
         </tbody>
      </table>   
   </div>
   <div>
      <form id = "uploadForm" action="upload" method="post" enctype="multipart/form-data">
         <div>
            <label>제목:</label>
            <input type="text" name="title">
         </div>
         <div>
            <label>첨부파일:</label>
            <input type="file" name="fileupload">
         </div>
         <div>
            <label>설명:</label>
            <input type="text" name="writing">
         </div>
         
      </form>
   </div>
   <hr>
   <div>
         <button id = "upload">[AJAX]등록</button>
   </div>
     
</div>   
</body>
</html>