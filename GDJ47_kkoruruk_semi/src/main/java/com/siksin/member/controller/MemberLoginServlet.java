package com.siksin.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.siksin.member.model.vo.Member;
import com.siksin.member.service.MemberService;

/**
 * Servlet implementation class MemberLoginServlet
 */
@WebServlet(name="memberLoginServlet", urlPatterns="/login.do") // 필터적용 name
public class MemberLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId=request.getParameter("userId");
		String password=request.getParameter("password");
		String saveId=request.getParameter("saveId");
		
		System.out.println("saveId"+saveId);
		
		if(saveId!=null) {
			Cookie c=new Cookie("saveId",userId);
			c.setMaxAge(24*60*60*7);
			response.addCookie(c);
		}else {
			Cookie c=new Cookie("saveId","");
			c.setMaxAge(0);
			response.addCookie(c);
		}
		
		Member mem=new MemberService().searchMember(userId,password);
		
		System.out.println("mem"+mem);
		
		if(mem!=null) {
			HttpSession session=request.getSession();
			session.setAttribute("loginMember", mem);
		}
		
		
		request.getRequestDispatcher("/index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
