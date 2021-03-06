package com.siksin.menu.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.siksin.menu.model.vo.MenuOption;
import com.siksin.menu.service.MenuOptionService;

/**
 * Servlet implementation class MenuOptionServlet
 */
@WebServlet("/menuoption.do")
public class MenuOptionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MenuOptionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int menuId=Integer.parseInt(request.getParameter("foodId"));		
		List<MenuOption> menuOption=new MenuOptionService().menuOptionSearch(menuId);			
		response.setContentType("application/json;charset=utf-8");
		new Gson().toJson(menuOption,response.getWriter());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
