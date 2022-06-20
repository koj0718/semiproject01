package com.siksin.menu.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.siksin.menu.model.vo.Menu;
import com.siksin.menu.model.vo.MenuOption;
import com.siksin.menu.service.MenuOptionService;
import com.siksin.menu.service.MenuService;

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
		int menuId=Integer.parseInt(request.getParameter("menuId"));
		String menuName=request.getParameter("menuName");
		String menuPrice=request.getParameter("menuPrice");
		
		List<MenuOption> mopList=new MenuOptionService().menuOptionSearch(menuId);
		request.setAttribute("mopList", mopList);
		request.setAttribute("menuName", menuName);
		request.setAttribute("menuPrice", menuPrice);
		request.getRequestDispatcher("/views/menu/menuOption.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
