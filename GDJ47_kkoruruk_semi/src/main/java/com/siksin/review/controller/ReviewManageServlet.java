package com.siksin.review.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.siksin.review.model.vo.ReviewManage;
import com.siksin.review.service.ReviewService;

/**
 * Servlet implementation class ReviewManageServlet
 */
@WebServlet("/reviewManage.do")
public class ReviewManageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewManageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		String loginId=request.getParameter("loginId");
		
		System.out.println(loginId);
		
		int cPage;
		int numPerpage=5; 
		try {
			cPage=Integer.parseInt(request.getParameter("cPage"));
		}catch(NumberFormatException e) {
			cPage=1;
		}

		
	
		
		
		List<ReviewManage> result=new ReviewService().reviewManage(loginId,cPage,numPerpage);
		int totalData=new ReviewService().reviewManageCount(loginId);
		int totalPage=(int)Math.ceil((double)totalData/numPerpage);
		int pageBarSize=5;
		int pageNo=((cPage-1)/pageBarSize)*pageBarSize+1;
		int pageEnd=pageNo+pageBarSize-1;
		
		
		
		
		
		String pageBar="<nav aria-label=\"Page navigation example\"> <ul class=\"pagination\">";
		if(pageNo==1) {
			pageBar+="<li class=\"page-item\"> <a class=\"page-link\" href= \"#\" aria-label=\"Previous\"> <span aria-hidden=\"true\">&laquo;</span> </a> </li>";
		}else {
			pageBar+="<li class=\"page-item\"> <a class=\"page-link\" href='"+request.getRequestURL()
				+"?cPage="+(pageNo-1)+"&loginId="+loginId+"'aria-label=\"Previous\"> <span aria-hidden=\"true\">&laquo;</span> </a> </li>";
		}
		
		while(!(pageNo>pageEnd||pageNo>totalPage)) {
			if(pageNo==cPage) {
				pageBar+="<li class=\"page-item\"><a class=\"page-link\" href=\"#\">"+pageNo+"</a></li>";
			}else {
				pageBar+="<li class=\"page-item\"><a class=\"page-link\" href='"+request.getRequestURL()
						+"?cPage="+(pageNo)+"&loginId="+loginId+"'>"+pageNo+"</a></li>";
			}
			pageNo++;
		}
		
		if(pageNo>totalPage) {
			pageBar+="<li class=\"page-item\"> <a class=\"page-link\" href=\"#\" aria-label=\"Next\"> <span aria-hidden=\"true\">&raquo;</span> </a> </li> </ul> </nav>";
		}else {
			pageBar+="<li class=\"page-item\"> <a class=\"page-link\" href='"+request.getRequestURL()
			+"?cPage="+(pageNo)+"&loginId="+loginId+"'aria-label=\"Next\"> <span aria-hidden=\"true\">&raquo;</span> </a> </li> </ul> </nav>";
		}
		
		
		
		
		request.setAttribute("pageBar", pageBar);
		request.setAttribute("list", result);
		
		request.getRequestDispatcher("/views/review/reviewManage.jsp")
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
