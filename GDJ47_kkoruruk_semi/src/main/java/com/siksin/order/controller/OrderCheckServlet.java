package com.siksin.order.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.siksin.order.model.vo.OrderList;
import com.siksin.order.service.OrderService;

/**
 * Servlet implementation class CheckOrderServlet
 */
@WebServlet("/checkOrder.do")
public class OrderCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderCheckServlet() {
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

		
	
		
		
		List<OrderList> result=new OrderService().searchOrderList(loginId,cPage,numPerpage);
		int totalData=new OrderService().searchOrderCount(loginId);
		int totalPage=(int)Math.ceil((double)totalData/numPerpage);
		int pageBarSize=5;
		int pageNo=((cPage-1)/pageBarSize)*pageBarSize+1;
		int pageEnd=pageNo+pageBarSize-1;
		
		
		
		
		
		
		
		String pageBar="";
		if(pageNo==1) {
			pageBar+="<span>[이전]</span>";
		}else {
			pageBar+="<a href='"+request.getRequestURL()
				+"?cPage="+(pageNo-1)+"&loginId="+loginId+"'>[이전]</a>";
		}
		
		while(!(pageNo>pageEnd||pageNo>totalPage)) {
			if(pageNo==cPage) {
				pageBar+="<span>"+pageNo+"</span>";
			}else {
				pageBar+="<a href='"+request.getRequestURL()
						+"?cPage="+(pageNo)+"&loginId="+loginId+"'>"+pageNo+"</a>";
			}
			pageNo++;
		}
		
		if(pageNo>totalPage) {
			pageBar+="<span>[다음]</span>";
		}else {
			pageBar+="<a href='"+request.getRequestURL()
			+"?cPage="+(pageNo)+"&loginId="+loginId+"'>[다음]</a>";
		}
		
		
		
		
		request.setAttribute("pageBar", pageBar);
		request.setAttribute("list", result);
		
		request.getRequestDispatcher("/views/order/order.jsp")
		.forward(request, response);
		
		
		
		
		
		
		
		
		
		
//		<nav aria-label="Page navigation example"> <ul class="pagination">
//		    <li class="page-item"> <a class="page-link" href= "#" aria-label="Previous"> <span aria-hidden="true">&laquo;</span> </a> </li>
//		    
//		    <li class="page-item"><a class="page-link" href="#">1</a></li>
//		    
//		    <li class="page-item"><a class="page-link" href="#">2</a></li>
//		    <li class="page-item"><a class="page-link" href="#">3</a></li>
//		    
//		    
//		    <li class="page-item"> <a class="page-link" href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span> </a> </li> </ul> </nav>
		
		
		
		
		
		
//		
//		String pageBar="<nav aria-label=\"Page navigation example\"> <ul class=\"pagination\">";
//		if(pageNo==1) {
//			pageBar+="<li class=\"page-item\">  <span aria-hidden=\"true\">&laquo;</span> </li>";
//		}else {
//			pageBar+="<li class=\"page-item\"> <a class=\"page-link\" href='"+request.getRequestURL()
//				+"?cPage="+(pageNo-1)+"&loginId="+loginId+"'aria-label=\"Previous\"> <span aria-hidden=\"true\">&laquo;</span> </a> </li>";
//		}
//		
//		while(!(pageNo>pageEnd||pageNo>totalPage)) {
//			if(pageNo==cPage) {
//				pageBar+="<li class=\"page-item\">"+pageNo+"</li>";
//			}else {
//				pageBar+="<li class=\"page-item\"><a class=\"page-link\" href='"+request.getRequestURL()
//						+"?cPage="+(pageNo)+"&loginId="+loginId+"'>"+pageNo+"</a></li>";
//			}
//			pageNo++;
//		}
//		
//		if(pageNo>totalPage) {
//			pageBar+="<li class=\"page-item\">  <span aria-hidden=\"true\">&raquo;</span> </li> </ul> </nav>";
//		}else {
//			pageBar+="<li class=\"page-item\"> <a class=\"page-link\" href='"+request.getRequestURL()
//			+"?cPage="+(pageNo)+"&loginId="+loginId+"'aria-label=\"Next\"> <span aria-hidden=\"true\">&raquo;</span> </a> </li> </ul> </nav>";
//		}
//		
//		
//		
//		
//		request.setAttribute("pageBar", pageBar);
//		request.setAttribute("list", result);
//		
//		request.getRequestDispatcher("/views/order/order.jsp")
//		.forward(request, response);
//		
		
		
		
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
