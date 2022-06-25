package com.siksin.order.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.siksin.order.model.vo.Cart;
import com.siksin.order.model.vo.CartList;
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
		String data=request.getParameter("data");
		String storeId=request.getParameter("storeId");	
		String storeName=request.getParameter("storeName");
		int deleveryTip=Integer.parseInt(request.getParameter("deleveryTip"));
		int foodId=Integer.parseInt(request.getParameter("foodId"));
		String foodName=request.getParameter("foodName");
		int foodPrice=Integer.parseInt(request.getParameter("foodPrice"));	
		int amount1=Integer.parseInt(request.getParameter("amount"));
		//System.out.println("수량"+amount1);
		
		String[] optionName=request.getParameterValues("optionName");
		//System.out.println(Arrays.toString(optionName));
		
		String[] optionPrice1=request.getParameterValues("optionPrice");
		int[] optionPrice=null;
		if(optionPrice1!=null) {
			optionPrice=Arrays.stream(optionPrice1).mapToInt(Integer::parseInt).toArray();
			//System.out.println(Arrays.toString(optionPrice));
		}
		
		String[] optionId1=request.getParameterValues("optionId");
		int[] optionId=null;
		if(optionId1!=null) {
			optionId=Arrays.stream(optionId1).mapToInt(Integer::parseInt).toArray();
			//System.out.println(Arrays.toString(optionId));
			
		}
	Cart cart=null;
		int totalPrice=0;
		if(optionName==null) {
			cart=new Cart(foodId,foodName,foodPrice,amount1);
			totalPrice = FoodPriceCalc.foodPriceCalc(cart);
		}else {
			cart=new Cart(foodId,foodName,foodPrice,amount1,optionName,optionPrice,optionId);
			totalPrice = FoodPriceCalc.foodPriceCalc(cart);
		}
		
	
		
		//System.out.println("카트 가격 계산 = " + totalPrice);
		
		if(cartList == null) {
			List<Cart> newCart = new ArrayList<>();
			cart.setTotalPrice(totalPrice);
			newCart.add(cart);
			cartList = new CartList(storeId, storeName, totalPrice, deleveryTip, newCart);
		} else {
			List<Cart> prevCart = cartList.getCart();
			int prevCartTotal = cartList.getCartTotal();
			cartList.setCartTotal(prevCartTotal + totalPrice);
		
			if(prevCart.contains(cart)) {
				int cartIndex = prevCart.indexOf(cart);
				int amount = cart.getAmount();
				
				Cart newCart = prevCart.get(cartIndex);
				int newAmount = newCart.getAmount() + amount;
				int newTotal = newCart.getTotalPrice() + totalPrice;
				
				newCart.setAmount(newAmount);
				newCart.setTotalPrice(newTotal);
				prevCart.set(cartIndex, newCart);
			} else {
				cart.setTotalPrice(totalPrice);
				prevCart.add(cart);
			}
		}	
		
		session.setAttribute("cartList", cartList);
        
        //System.out.println("cartList = " + cartList);
 
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
