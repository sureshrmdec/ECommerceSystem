<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>


<html>
  <head>
    <title>Shopping Cart</title>
     <style >
         .d1{
	  		position:relative;
	   	    margin:0 auto;     
	        margin-top:5%;
	        width:800px
          }
          .a1{
      		 color:blue;
             text-decoration:none
          }
          .a2{
      		 color:red;
             text-decoration:none
          }
          
    </style >
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
   <div class="d1">
     <h2 align="center">Shopping Cart</h2>
     
     
     <c:if test="${empty(cart.map) }">
            <h4 align="center">You haven't bought anything yet。</h4>
     </c:if>
     
     <c:if test="${!empty(cart.map) }">
     <table width="100%" >
        <tr>
           <td>  </td>
           <td>Product</td>
           <td>Brand</td>
           <td>Price</td>
           <td>Quantity</td>
           <td>Subtotal</td>
           <td>  </td>
        </tr>
    
        <c:forEach var="entry" items="${cart.map }">  <!-- entry<id,CartItem> -->
        <!-- entry<id,book> -->
           <tr>
	           <td><img width="90" height="90" src="../image/${entry.key}.png" /></td>
	           <td>${entry.value.computer.name }</td>
	           <td>${entry.value.computer.brand }</td>
	           <td>${entry.value.computer.price }</td>
	           <td>
	               <input type="text" name="quantity" value="${entry.value.quantity }" style="width:35" onchange="changeQuantity(this,${entry.key },${entry.value.quantity })" />
	           </td>
	           <td>${entry.value.price }</td>
	           <td><a class="a1" href="javascript:void(0)" onclick="deleteitem(${entry.key})">delete</a></td>
           </tr>
        </c:forEach>
        
        <tr>
        	<td colspan="6" style="text-align:center"> <a class="a1"  href="javascript:void(0)" onclick="clearcart()"> Clear your cart </a> </td>
        </tr>
        <tr>
        	<td colspan="6" style="text-align:center">Total: ${cart.price } RMB</td>
        </tr>
        <tr>
        	<td colspan="6" style="text-align:center"><a class="a2" href="${pageContext.request.contextPath }/servlet/PaymentServlet?amount=${cart.price }" ><B>Pay Now</B></a></td>
        </tr>
 
     </table>
     </c:if>
    </div>
  </body>
</html>
