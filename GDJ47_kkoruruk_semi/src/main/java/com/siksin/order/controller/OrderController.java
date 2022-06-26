package com.siksin.order.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.siksin.order.model.vo.CartList;

/**
 * Servlet implementation class OrderController
 */
@WebServlet("/order.do")
public class OrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession();
	    CartList cartList = (CartList) session.getAttribute("cartList");
		
	    request.setAttribute("cartList", cartList);
	    	
	    System.out.println("dhej=="+cartList);
	    System.out.println("ddd"+cartList.getCart());
	    System.out.println("qqqqq"+cartList.getCart().get(0).getFoodName());
	    
		request.getRequestDispatcher("/views/payment/payment.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
