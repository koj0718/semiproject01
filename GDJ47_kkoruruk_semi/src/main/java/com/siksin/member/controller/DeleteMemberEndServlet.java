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
 * Servlet implementation class DeleteMemberEndServlet
 */
@WebServlet(name="deleteMemberEndServlet", urlPatterns="/member/deleteMemberEnd.do")
public class DeleteMemberEndServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteMemberEndServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userId=request.getParameter("userId");
		String oriPwd=request.getParameter("password");
		
		// password pram 확인
		Member m=new MemberService().searchMember(userId, oriPwd); // // oriPwd=password 값 확인
		String msg="", loc="";
		
		if(m!=null) { // ture
			
			int result=new MemberService().deleteMember(userId, oriPwd);
			
			if(result>0) {
				
				msg="ㅂㅇ";
				String script="opener.location.replace('"+request.getContextPath()+"/logout.do'); close();";
				request.setAttribute("script", script);
				
			}else { // false
				
				msg="비밀번호를 다시 확인하세요.";
				loc="/member/deleteMember.do?userId="+userId;
				
			}
			request.setAttribute("msg", msg);
			request.setAttribute("loc", loc);
			request.getRequestDispatcher("/views/common/msg.jsp").forward(request, response);
			
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
