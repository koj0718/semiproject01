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
import com.siksin.store.service.StoreService;

/**
 * Servlet implementation class StoreDetailSearchServlet
 */
@WebServlet("/storedetailsearch.do")
public class StoreDetailSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StoreDetailSearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String storeId=request.getParameter("id");
		Store s=new StoreService().selectStoreId(storeId);
		List<Menu> menuList=new MenuService().searchStoreDeatil(storeId);
		
		
//		List<MenuOption> menuOption=new MenuService().MenuOption(menuId);		
		
	
		
		request.setAttribute("store", s);	
//		request.setAttribute("storeId", storeId);
		request.setAttribute("menuList", menuList);	
		
		request.getRequestDispatcher("/views/store/detail.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
