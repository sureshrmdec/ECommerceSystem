<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>Renmin Mall</title>
	<style> 
	
	body{
	    text-align:center;
	}
	
     .d1{
     	border:1px solid red; 
     	width:300px;
     	height:150px;
  		position:relative;
   	    margin:0 auto;     
        margin-top:15%
     }
     
     .d2{
     	font-size:13;
     }
     
     .a1{
        text-decoration:none
     }
     
　 </style>
	
  </head>
  
  <body>
    <div class="d1">
       <h3 align="center">Welcome to Renmin Mall</h3>
       <h4 align="center" ><a class="a1" href="${pageContext.request.contextPath }/servlet/ListProductServlet"  text-decoration: none>browse products</a></h4>
       <div class="d2">Graduation Project by Bowen Li</div>
    </div>
  </body>
</html>
