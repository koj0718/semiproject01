package com.siksin.admin.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * Servlet implementation class BannerManage
 */
@WebServlet("/bannerManage.do")
public class BannerManage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BannerManage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		
		
//			String path=getServletContext().getRealPath("/images");
////			String path=root+"/board";
//			File f=new File(path);
//			if(!f.exists()) f.mkdirs();
//			
//			MultipartRequest mr=new MultipartRequest(request,path,(1023*1024*10),"UTF-8",
//					new MyFileRenamedPolicy());

//			Board b=Board.builder()
//					.boardTitle(mr.getParameter("boardTitle"))
//					.boardContent(mr.getParameter("boardContent"))
//					.boardWriter(mr.getParameter("boardWriter"))
//					.boardOriginalFilename(mr.getOriginalFileName("upfile"))
//					.boardRenamedFilename(mr.getFilesystemName("upfile"))
//					.build();
//			
//			int result=new BoardService().insertBoard(b);
			
			
			
//			String msg="",loc="";
//			
//			if(result>0) {
//				msg="게시글이 등록되었습니다.";
//				loc="/board/boardList.do";
//			}else {
//				msg="게시글 등록실패!";
//				loc="/board/boardWrite.do";
//			}
//			request.setAttribute("msg", msg);
//			request.setAttribute("loc", loc);
//			request.getRequestDispatcher("/views/common/msg.jsp")
//			.forward(request, response);
			
			
		

			String path=request.getServletContext().getRealPath("/images");
			
	
			int maxSize=1024*1024*10;//10Mb
			

			String encoding="UTF-8";
			
			

			DefaultFileRenamePolicy dfp=new DefaultFileRenamePolicy();
			

			MultipartRequest mr=new MultipartRequest(request,path,maxSize,encoding,dfp);
			

			
			

			
			//////
		
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
