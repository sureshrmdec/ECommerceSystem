<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>


<html>
  <head>
    <title>购物车</title>
    
    <script type="text/javascript">
       function deleteitem(id){
           var b = window.confirm("Are you sure to delete this product？");
           if(b){
           		window.location.href="${pageContext.request.contextPath }/servlet/DeleteItemServlet?id="+id;
           }
       }
       
       function clearcart(){
         	var b = window.confirm("Are you sure to clear your shopping cart？");
         	if(b){
         		window.location.href="${pageContext.request.contextPath }/servlet/ClearCartServlet";
         	}
       }
       
       function changeQuantity(input,id,previousValue){
            var quantity = input.value; //得到要修改的数量
             
             /*
             //验证输入是否为数字
               if(isNaN(quantity)){
             	  alert("Please enter a number！");
             	  input.value=previousValue;
             	  return;
             }*/
             
             //验证输入是否为正整数
               if(quantity<0||quantity!=parseInt(quantity)){
             	  alert("Please enter a Integer！");
             	  input.value=previousValue;
             	  return;
             }
            
               var b =window.confirm("Are you sure to change the quantity to "+quantity+"？");
             if(b){
                 window.location.href="${pageContext.request.contextPath }/servlet/ChangeQuantityServlet?id="+id+"&quantity="+quantity;
             }
       }
       
    </script>
  </head>
  
  <body>
     <h2>Cart购物车列表</h2>
     
     
     <c:if test="${empty(cart.map) }">
            您未购买任何商品。
     </c:if>
     
     <c:if test="${!empty(cart.map) }">
     <table width="70%" border="1">
        <tr>
           <td>Product</td>
           <td>Brand</td>
           <td>Price</td>
           <td>Quantity</td>
           <td>Subtotal</td>
           <td>Operation</td>
        </tr>
    
        <c:forEach var="entry" items="${cart.map }">  <!-- entry<id,CartItem> -->
        <!-- entry<id,book> -->
           <tr>
	           <td>${entry.value.computer.name }</td>
	           <td>${entry.value.computer.brand }</td>
	           <td>${entry.value.computer.price }</td>
	           <td>
	               <input type="text" name="quantity" value="${entry.value.quantity }" style="width:35" onchange="changeQuantity(this,${entry.key },${entry.value.quantity })" />
	           </td>
	           <td>${entry.value.price }</td>
	           <td><a href="javascript:void(0)" onclick="deleteitem(${entry.key})">delete</a></td>
           </tr>
        </c:forEach>
        
        <tr>
        	<td colspan="6" style="text-align:center"> <a href="javascript:void(0)" onclick="clearcart()" > Clear your cart </a> </td>
        </tr>
        <tr>
        	<td colspan="6" style="text-align:center">Total: ${cart.price } RMB</td>
        </tr>
        <tr>
        	<td colspan="6" style="text-align:center"><a href="${pageContext.request.contextPath }/servlet/PaymentServlet?amount=${cart.price }" >Pay Now</a></td>
        </tr>
 
     </table>
     </c:if>
     
  </body>
</html>
