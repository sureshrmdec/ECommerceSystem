package web.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utils.OrderIdUtil;

public class PaymentServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String amount  = request.getParameter("amount");
		request.setAttribute("amount",amount);
		
		String orderId = OrderIdUtil.getValue(); //从配置文件读取信息 
		request.setAttribute("orderid",orderId);
		System.out.println(orderId);
		
		request.getRequestDispatcher("/WEB-INF/jsp/payment.jsp").forward(request, response);
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}
}
