package web.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.BusinessService;
import domain.Cart;
import domain.Computer;

public class BuyServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		
		BusinessService service = new BusinessService();
		Computer computer = service.findComputer(id);
		
		//get customer's shopping cart 得到用户的购物车
		Cart cart = (Cart) request.getSession().getAttribute("cart");
		if(cart==null){
			cart = new Cart();
			request.getSession().setAttribute("cart",cart);
		}
		
		//add product to shopping cart 把商品加入用户的购物车
		cart.add(computer);
		
		//request.getRequestDispatcher("${pageContext.request.contextPath }/servlet/ListCartUIServlet");
		response.sendRedirect(request.getContextPath()+"/servlet/ListCartServlet");
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}
}
