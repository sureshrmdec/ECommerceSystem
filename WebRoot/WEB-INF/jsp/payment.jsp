<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>ePayment </title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">  
	
	<link rel="stylesheet" href="../css/base.css">
	<link href="../css/purchase.2012.css?v=201212081831" rel="stylesheet" type="text/css">  
   <style>
   .d1{
	  		position:relative;
	   	    margin:0 auto;     
	        margin-top:30px;
	        width:600px
      }
      .t tr td{
          text-align:center
      }
  </style>
  </head>
  
  <body>
  <div id="shortcut-2013">
		<div class="w">
			<ul class="fl lh">
				<li class="fore1 ld"><b></b><a
					href="javascript:addToFavorite()" rel="nofollow">Add to
						favourite</a></li>
			</ul>
			<ul class="fr lh">
				<li>Welcome to Renmin Mall！<span> </span></li>
			</ul>
			<span class="clr"></span>
		</div>
	</div>

	<div class="w w1 header clearfix">
		<div id="logo">
			<a href="http://localhost:8080/ShoppingCart"><img
				clstag="clickcart|keycount|xincart|logo" src="../image/logo.png">
			</a>
		</div>

		<div class="progress clearfix">
			<ul class="progress-3">
				<li class="step-1"><b></b>1.My Shopping Cart</li>

				<li class="step-3">2.Submit your order</li>
			</ul>
		</div>
	</div>
	<div class="d1">
	    <form action="${pageContext.request.contextPath}/servlet/PaymentRequest?orderid=${orderid }&amount=${amount }" method="post" name="paymentform">
	       <table class="t" width="100%" border="0">
	            <tr>
	               <td align="center"  colspan="4" border="0"  bgcolor="#E8F2FE">
                       <h3>订单号：${orderid } 应付金额：${amount }元</h3></td>
	               </td>
	           </tr>
	          
	           <tr>
	              <td height="30" colspan="3" align="center"><span class="STYLE3">请您选择在线支付银行</span> </td>
	           </tr>
		      <tr>
		       
		        <td width="15%" height="25"><INPUT TYPE="radio" NAME="pd_FrpId" value="CMBCHINA-NET">招商银行 </td>
		        <td width="15%" height="25"><INPUT TYPE="radio" NAME="pd_FrpId" value="ICBC-NET">工商银行</td>
		        <td width="15%" height="25"><INPUT TYPE="radio" NAME="pd_FrpId" value="ABC-NET">农业银行</td>
		        
		      </tr>
		      <tr>
		        <td height="25"><INPUT TYPE="radio" NAME="pd_FrpId" value="CCB-NET">建设银行 </td>
		        <td><INPUT TYPE="radio" NAME="pd_FrpId" value="CMBC-NET">民生银行</td>
		        <td><INPUT TYPE="radio" NAME="pd_FrpId" value="CEB-NET" >光大银行 </td>
		        
		      </tr>
		      <tr>
		        <td height="25"><INPUT TYPE="radio" NAME="pd_FrpId" value="BOC-NET">中国银行</td>
		        <td><INPUT TYPE="radio" NAME="pd_FrpId" value="CIB-NET">兴业银行 </td>
		        <td><INPUT TYPE="radio" NAME="pd_FrpId" value="ECITIC-NET">中信银行</td>
		      </tr>
		      <tr>
		        <td height="25"><INPUT TYPE="radio" NAME="pd_FrpId" value="BOCO-NET">交通银行</td>
		        <td><INPUT TYPE="radio" NAME="pd_FrpId" value="SDB-NET">深发银行</td>
		        <td><INPUT TYPE="radio" NAME="pd_FrpId" value="SPDB-NET">浦发银行 </td>
		      </tr>
		      
		      <tr>
		        <td colspan="3" align="center"><input type="submit" value=" 确认支付 " /></td>
		      </tr>
          </table>
	    </form>
	 
  </div>
  </body>
</html>