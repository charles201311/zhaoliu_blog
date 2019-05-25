<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>我的博客</title>

<script type="text/javascript" src="/resource/js/jquery-3.2.1.js"></script>
<script type="text/javascript" src="/resource/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="/resource/css/bootstrap.min.css">
 <script type="text/javascript">
 function deleteByid(id){
	 var ret = confirm("删除后不能恢复?")
	if(ret){
		$.ajax({
			type:"post",
			data:{id:id},
			url:"deleteByid",
			success:function(obj){
				if(obj){
					alert("删除成功!")
					location.href="list";
				}
				
			}
			
			
			
		})
	}
	 
	 
	 
 }
 
 
 $(function(){
	 //为分页动态的加click
	 $(".page-link").click(function(){
		 var url =$(this).attr("data");
		
		 location.href=url;
	 })
	 
 })
 
 function toAdd(){
	 location.href="toAdd"
 }
 
 function query(month){
	
	 location.href="list?month="+month
 }
 
 </script>
</head>
<body>
 <div class="container">
   <h2  style="color: green" align="center">博文列表   
    <span style="float: right;">   <button type="button" class="btn btn-outline-info" onclick="location.href='toManager'" >管理博文</button>
       </span>
   </h2>
   
   <br/>
   
    <span style="float: right;">
    <button type="button" class="btn btn-outline-info" onclick="query(1)" >显示1个月</button>
    <button type="button" class="btn btn-outline-info"  onclick="query(3)">显示3个月</button>
    <button type="button" class="btn btn-outline-info"  onclick="query(6)">显示6个月</button>
     <button type="button" class="btn btn-success" onclick="toAdd()">发博文</button>
    </span>
       <hr/>
   <dl>
     <c:forEach items="${list}" var="l" >
    <dt>${l.title} </dt>
    <dd>作者:${l.author }  发布时间:${l.created } 
     <span style="float: right;"><a href="toDetail?id=${l.id }">查看</a> | <a href="javascript:deleteByid(${l.id })">删除</a></span></dd>
     <hr/>
  
   </c:forEach>
   </dl>
 
 ${pageInfo }
 </div>

</body>
</html>