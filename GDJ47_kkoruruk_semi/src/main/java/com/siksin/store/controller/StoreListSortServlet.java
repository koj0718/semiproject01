package com.siksin.store.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.siksin.menu.service.MenuService;
import com.siksin.store.model.vo.Store;

/**
 * Servlet implementation class StoreListSortServlet
 */
@WebServlet("/storeListSort.do")
public class StoreListSortServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StoreListSortServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String selectval=request.getParameter("selectval");
		String searchMenu=request.getParameter("searchMenu");
		System.out.println(selectval);
		System.out.println(searchMenu);
		
		List<Store> result=new MenuService().searchStoreList(selectval,searchMenu);
		
		request.setAttribute("list",result);
		
		request.getRequestDispatcher("/views/menu/menuCategory.jsp")
		.forward(request, response);
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
