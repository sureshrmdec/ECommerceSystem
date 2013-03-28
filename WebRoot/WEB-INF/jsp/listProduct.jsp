<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>

<html>
  <head>
    <title>商品列表</title>
  </head>
  
  <body style="text-align:center">
     <h2>产品列表</h2>
     
     <table width="70%" border="1">
        <tr>
           <td>Product</td>
           <td>Brand</td>
           <td>Price</td>
           <td>Description</td>
           <td>Operation</td>
        </tr>
    
        <c:forEach var="entry" items="${map }"> 
        <!-- entry<id,book> -->
           <tr>
	           <td>${entry.value.name }</td>
	           <td>${entry.value.brand }</td>
	           <td>${entry.value.price }</td>
	           <td>${entry.value.description }</td>
	           <td><a href="${pageContext.request.contextPath }/servlet/BuyServlet?id=${entry.key}" target="_blank">Add to shopping cart</a></td>
           </tr>   
        </c:forEach>
     </table>
     
  </body>
</html>
