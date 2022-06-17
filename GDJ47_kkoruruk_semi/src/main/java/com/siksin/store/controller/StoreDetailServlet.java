package com.siksin.store.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.siksin.menu.model.vo.Menu;
import com.siksin.menu.service.MenuService;
import com.siksin.store.model.vo.Store;

/**
 * Servlet implementation class StoreDetailServlet
 */
@WebServlet("/storedetail.do")
public class StoreDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StoreDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String storeId="A";
//		Store s=new MenuService().searchStoreId(storeId);
		List<Menu> menuList=new MenuService().searchStoreDeatil(storeId);
//		Menu menuId=new
//		List<MenuOption> menuOption=new MenuService().MenuOption(menuId);
		
		System.out.println(menuList);
		request.setAttribute("storeId", storeId);
		request.setAttribute("menuList", menuList);		
		request.getRequestDispatcher("/views/store/storeDetail.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
