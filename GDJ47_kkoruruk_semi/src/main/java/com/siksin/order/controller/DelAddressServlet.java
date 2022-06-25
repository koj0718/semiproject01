package com.siksin.order.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class DelAddressServlet
 */
@WebServlet("/deladdress.do")
public class DelAddressServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DelAddressServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String mapAddress=request.getParameter("mapAddress");
		String detAddress=request.getParameter("detAddress");
		
		HttpSession session=null;
		
		session=request.getSession();
		
		session.setAttribute("mapAddress",mapAddress);
		session.setAttribute("detAddress",detAddress);
		
		System.out.println(mapAddress);
		System.out.println(detAddress);
		
		String script="opener.location.replace('"+request.getContextPath()+"/');close();";
		request.setAttribute("script",script);
		
		request.getRequestDispatcher("/views/common/locmsg.jsp")
		.forward(request,response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
