<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>

<html>
  <head>
    <title>Product List</title>
    
    <style >
      ul li{ //父子选择器
			list-style-type:none;/*用于去掉 <ul><li>前面的黑点*/
			float:left; /*左浮动：都往左边去*/
			margin:10px;
		}
    </style>
  </head>
  
  <body style="text-align:center">
     <h2>Product List</h2>
    
     
      <ul class="list-h">
   
    
        <c:forEach var="entry" items="${map }"> 
          <li >
			<div>
					<img width="160" height="160" src="../image/${entry.key}.png" />
			</div>
			<div class="p-name">
					<font style="color: rgb(255, 0, 0);">
					    ${entry.value.brand }  ${entry.value.name } 
					</font>
			</div>
			<div id="djd708402" class="p-price">
				    <font style="color: rgb(10, 6, 7);">
					    ${entry.value.price } RMB
					</font>
			</div>
			<div class="btns">
			        <a href="${pageContext.request.contextPath }/servlet/BuyServlet?id=${entry.key}" target="_blank">Add to cart</a>
			</div>
		 </li>
        
        <!-- entry<id,book> 
           <tr>
	           <td>${entry.value.name }</td>
	           <td>${entry.value.brand }</td>
	           <td>${entry.value.price }</td>
	           <td>${entry.value.description }</td>
	           <td><a href="${pageContext.request.contextPath }/servlet/BuyServlet?id=${entry.key}" target="_blank">Add to shopping cart</a></td>
           </tr>   
        -->   
         
        </c:forEach>
     </ul>
     
  </body>
</html>