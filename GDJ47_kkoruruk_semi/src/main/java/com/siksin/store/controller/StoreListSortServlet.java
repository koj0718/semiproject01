package com.siksin.store.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.siksin.menu.service.MenuService;
import com.siksin.store.model.vo.Store;

/**
 * Servlet implementation class StoreListSortServlet
 */
@WebServlet("/storeListSort.do")
public class StoreListSortServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StoreListSortServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String selectval=request.getParameter("selectval");
		String searchMenu=request.getParameter("searchMenu");
		System.out.println(selectval);
		System.out.println(searchMenu);
		
		
		int cPage;
		int numPerpage=8; 
		try {
			cPage=Integer.parseInt(request.getParameter("cPage"));
		}catch(NumberFormatException e) {
			cPage=1;
		}
		
		List<Store> result=new MenuService().searchStoreList(selectval,searchMenu,cPage,numPerpage);
		int totalData=new MenuService().searchMenuCount(searchMenu);
		int totalPage=(int)Math.ceil((double)totalData/numPerpage);
		int pageBarSize=5;
		int pageNo=((cPage-1)/pageBarSize)*pageBarSize+1;
		int pageEnd=pageNo+pageBarSize-1;
		
		String pageBar="<nav aria-label=\"Page navigation example\"> <ul class=\"pagination\">";
		if(pageNo==1) {
			pageBar+="<li class=\"page-item\"> <a class=\"page-link\" href= \"#\" aria-label=\"Previous\"> <span aria-hidden=\"true\">&laquo;</span> </a> </li>";
		}else {
			pageBar+="<li class=\"page-item\"> <a class=\"page-link\" href='"+request.getRequestURL()
				+"?cPage="+(pageNo-1)+"&searchMenu="+searchMenu+"'aria-label=\"Previous\"> <span aria-hidden=\"true\">&laquo;</span> </a> </li>";
		}
		
		while(!(pageNo>pageEnd||pageNo>totalPage)) {
			if(pageNo==cPage) {
				pageBar+="<li class=\"page-item\"><a class=\"page-link\" href=\"#\">"+pageNo+"</a></li>";
			}else {
				pageBar+="<li class=\"page-item\"><a class=\"page-link\" href='"+request.getRequestURL()
						+"?cPage="+(pageNo)+"&searchMenu="+searchMenu+"'>"+pageNo+"</a></li>";
			}
			pageNo++;
		}
		
		if(pageNo>totalPage) {
			pageBar+="<li class=\"page-item\"> <a class=\"page-link\" href=\"#\" aria-label=\"Next\"> <span aria-hidden=\"true\">&raquo;</span> </a> </li> </ul> </nav>";
		}else {
			pageBar+="<li class=\"page-item\"> <a class=\"page-link\" href='"+request.getRequestURL()
			+"?cPage="+(pageNo)+"&searchMenu="+searchMenu+"'aria-label=\"Next\"> <span aria-hidden=\"true\">&raquo;</span> </a> </li> </ul> </nav>";
		}
		
		
		System.out.println(cPage);
		
		
		request.setAttribute("pageBar", pageBar);
		request.setAttribute("list",result);
		
		request.getRequestDispatcher("/views/menu/menuCategory.jsp")
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
