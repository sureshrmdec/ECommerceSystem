<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="header1.jsp"%>
<%@include file="UpperBody.jsp"%>
	
    <div class="w main">
	  <div class="right-extra">
		<div id="select" class="m"
			clstag="thirdtype|keycount|thirdtype|select">

			<dl class="fore" id="select-brand">
				<dt>Brand：</dt>
				<dd>
					<div class="content">
						<div rel="0">
							<a id="0"
								href="${pageContext.request.contextPath }/servlet/ListProductServlet"
								class="curr">All</a>
						</div>
						<div rel="1">
							<a id="1311"
								href="${pageContext.request.contextPath }/servlet/ListProductServlet?brand=Lenovo">Lenovo</a>
						</div>
						<div rel="2">
							<a id="1314"
								href="${pageContext.request.contextPath }/servlet/ListProductServlet?brand=Asus">ASUS</a>
						</div>
						<div rel="3">
							<a id="1335"
								href="${pageContext.request.contextPath }/servlet/ListProductServlet?brand=Dell">DELL</a>
						</div>
						<div rel="4">
							<a id="1327"
								href="${pageContext.request.contextPath }/servlet/ListProductServlet?brand=Samsung">SAMSUNG</a>
						</div>

					</div>
				</dd>
	<!--      	<dt>Inches：</dt>
				<dd>
					<div class="content">
						<div rel="0">
							<a id="0"
								href="${pageContext.request.contextPath }/servlet/ListProductServlet"
								class="curr">All</a>
						</div>
						<div rel="1">
							<a id="1311"
								href="${pageContext.request.contextPath }/servlet/ListProductServlet?inch=11">11
								inches</a>
						</div>
						<div rel="2">
							<a id="1314"
								href="${pageContext.request.contextPath }/servlet/ListProductServlet?inch=13">13
								inches</a>
						</div>
						<div rel="3">
							<a id="1335"
								href="${pageContext.request.contextPath }/servlet/ListProductServlet?brand=15">15
								inches</a>
						</div>
					</div>
				</dd>
				-->	
			</dl>

		</div>
		<!--select end -->


		<div class="m plist" id="plist"
			clstag="thirdtype|keycount|thirdtype|plist">
			<ul class="list-h">
				<c:forEach var="entry" items="${map }">
					<li onclick="log(7,3,566861)">
						<div class="p-img">
							<img width="160" height="160"
								src="../image/${entry.value.id }.png">
						</div>
						<div class="p-name">
							<a target="_blank" href="" title="">${entry.value.brand }
								${entry.value.name } </a>
						</div>
						<div id="djd566861" class="p-price">${entry.value.price} RMB
						</div>

						<div class="p-cart">
							<a target="_blank"
								href="${pageContext.request.contextPath }/servlet/BuyServlet?id=${entry.key}"
								title="">Add to cart </a>
						</div></li>
				</c:forEach>
			</ul>
		</div>
	</div>
	<!--right-extra end-->


	<%@include file="footer1.jsp"%>