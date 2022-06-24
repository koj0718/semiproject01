package com.siksin.order.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.siksin.order.model.vo.Cart;
import com.siksin.order.model.vo.CartList;
import com.siksin.order.service.CartService;
import com.siksin.util.FoodPriceCalc;

/**
 * Servlet implementation class CartControllerSevlet
 */
@WebServlet("/addCart")
public class CartControllerSevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartControllerSevlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		CartList cartList = (CartList) session.getAttribute("cartList");
		Cart cart=new Cart();
		int totalPrice = FoodPriceCalc.foodPriceCalc(cart);
				
		session.setAttribute("cartList", cartList);
        
        System.out.println("cartList = " + cartList);
		
		
		
		response.setContentType("application/json;charset=utf-8");
		new Gson().toJson(cartList,response.getWriter());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
