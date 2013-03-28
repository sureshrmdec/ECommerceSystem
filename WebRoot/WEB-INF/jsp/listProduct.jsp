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
           <td>名称</td>
           <td>厂商</td>
           <td>价格</td>
           <td>描述信息</td>
           <td>操作类型</td>
        </tr>
    
        <c:forEach var="entry" items="${map }"> 
        <!-- entry<id,book> -->
           <tr>
	           <td>${entry.value.name }</td>
	           <td>${entry.value.brand }</td>
	           <td>${entry.value.price }</td>
	           <td>${entry.value.description }</td>
	           <td><a href="${pageContext.request.contextPath }/servlet/BuyServlet?id=${entry.key}" target="_blank">加入购物车</a></td>
           </tr>   
        </c:forEach>
     </table>
     
  </body>
</html>
