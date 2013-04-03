<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>

<html>
  <head>
    <title>Product List</title>
    
    <style >
    
      ul li{ 
			list-style-type:none;   /*用于去掉 <ul><li>前面的黑点*/
			float:left;    /*左浮动：都往左边去*/
			margin:10px;
		}
      .d1{
	  		position:relative;
	   	    margin:0 auto;     
	        margin-top:13%
      }
      .a1{
      		color:red;
            text-decoration:none
      }
    </style>
  </head>
  
  <body style="text-align:center">
    <div class="d1">
       <h2>Product List</h2>
     
       <ul class="list-h">
  
         <c:forEach var="entry" items="${map }"> 
             <li >
				<div>
						<img width="160" height="160"  src="../image/${entry.key }.png" />
				</div>
				<div class="p-name">
						<font style="color: rgb(0, 0, 0);">
						    ${entry.value.brand }  ${entry.value.name } 
						</font>
				</div>
				<div id="djd708402" class="p-price">
					    <font style="color: rgb(10, 166, 7);">
						    ${entry.value.price } RMB
						</font>
				</div>
				<div class="btns">
                      <a class="a1" href="${pageContext.request.contextPath }/servlet/BuyServlet?id=${entry.key}" target="_blank"><b>Add to cart</b></a>
				</div>
		    </li>
         </c:forEach>
       </ul>
     </div>
  </body>
</html>