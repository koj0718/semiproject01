package com.siksin.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.siksin.member.model.vo.Member;
import com.siksin.member.service.MemberService;

/**
 * Servlet implementation class MemberEnrollendServlet
 */
@WebServlet("/memberEnrollEnd.do")
public class MemberEnrollendServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberEnrollendServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");	
		String userId=request.getParameter("userId");
		String password=request.getParameter("password");
		String userName=request.getParameter("name");
		String email=request.getParameter("email");		
		String nickName=request.getParameter("nickname");
		String phone=request.getParameter("phone");

		Member m=Member.builder()
				.memId(userId)
				.memPwd(password)
				.memName(userName)
				.memEmail(email)
				.memNick(nickName)
				.memPhone(phone)
				.build();
				
		System.out.println(m);
		int result=new MemberService().memberEnroll(m);
		System.out.println(result);
		String msg="",loc="";
		if(result>0) {
			msg="회원가입을 축하드립니다!";
			loc="/";
		}else{
			msg="회원가입에 실패했습니다. 다시 시도하세요!";
			loc="/memberloginpage.do";
		}
		request.setAttribute("msg", msg);
		request.setAttribute("loc",loc);
	
		
		request.getRequestDispatcher("/views/common/msg.jsp").forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
