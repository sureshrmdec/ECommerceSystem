<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>Renmin Mall</title>
	<style> 
	
     .d1{
     	border:0px; 
     	width:458px;
     	height:350px;
  		position:relative;
   	    margin:0 auto;     
        margin-top:10%;
        text-align:center
     }
     
     .d2{
     	width:458px;
     	height:298px;  
     }
     
     .d3{
     	width:458px;
     	height:52px;  
     	background-color:#00A2E8;
     	text-align:center;
     	font-color:white;
        font-size:13
     }
     .a1{
        text-decoration:none;
        color:white;
        font-size:large;
     }
     
　 </style>
  </head>
  
  <body>
    <div class="d1">
       <div class="d2"><img src="image/welcome.png" ></div>
       <div class="d3">
             <a class="a1" href="${pageContext.request.contextPath }/servlet/ListProductServlet" >Browse Products
             </a>
       </div>
    </div>
  </body>
</html>
