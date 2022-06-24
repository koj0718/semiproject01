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
 * Servlet implementation class UpdatePasswordServlet
 */
@WebServlet(name="updatePasswordEndServlet", urlPatterns = "/member/updatePasswordEnd.do") // 필터적용 name
public class UpdatePasswordEndServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdatePasswordEndServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userId=request.getParameter("userId");
		String oriPwd=request.getParameter("password");
		String newPwd=request.getParameter("password2");
		
		// oriPwd 값 확인
		Member m=new MemberService().searchMember(userId, oriPwd);
		String msg="", loc="";
		
		if(m!=null) { // 아니지 않을 경우=맞음
			
			int result=new MemberService().updatePassword(userId, newPwd); // -> 새 비밀번호로 변경
			
			if(result>0) {
				
				msg="비밀번호 변경을 완료했습니다.";
				// -> 메세지출력 후 새창 닫기
				String script="opener.location.replace('"+request.getContextPath()+"/logout.do');close();";
				request.setAttribute("script", script);
				
			}else { // 아닐 경우
				
				msg="비밀번호 변경을 실패했습니다.";
				loc="/member/updatePassword.do?userId="+userId;
				
			}
			
		}else { // 현재 비밀번호가 안맞음
			
			msg="현재 비밀번호가 맞지 않습니다."; // -> 경고메세지 출력 후
			loc="/member/updatePassword.do?userId="+userId; // 패스워드 변경 페이지로 이동
			
		}
		request.setAttribute("msg", msg);
		request.setAttribute("loc", loc);
		request.getRequestDispatcher("/views/common/msg.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
