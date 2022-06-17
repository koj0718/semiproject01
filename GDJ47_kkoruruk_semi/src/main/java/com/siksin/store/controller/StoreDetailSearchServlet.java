package com.siksin.store.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		System.out.println(storeId);
		
		Store s=new StoreService().selectStoreId(storeId);
		System.out.println(s);
		
		request.setAttribute("storeId", s);
		
		request.getRequestDispatcher("/views/store/storeDetail.jsp")
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
