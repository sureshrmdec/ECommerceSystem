<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>ePayment </title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
   <style>
   .d1{
	  		position:relative;
	   	    margin:0 auto;     
	        margin-top:15%;
	        width:600px;
      }
      .t tr td{
          text-align:center
      }
  </style>
  </head>
  
  <body>
  <div class="d1">
	    <form action="${pageContext.request.contextPath}/servlet/yeepay/PaymentRequest?orderid=${orderid }&amount=${amount }" method="post" name="paymentform">
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
		        <td height="25"><INPUT TYPE="radio" NAME="pd_FrpId" value="BCCB-NET">北京银行</td>
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