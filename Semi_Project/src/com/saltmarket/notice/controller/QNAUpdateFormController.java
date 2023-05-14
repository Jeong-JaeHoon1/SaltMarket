package com.saltmarket.notice.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.saltmarket.notice.model.service.QNAService;
import com.saltmarket.notice.model.vo.Attachment;
import com.saltmarket.notice.model.vo.QNA;

/**
 * Servlet implementation class QNAUpdateFormController
 */
@WebServlet("/updateForm.qna")
public class QNAUpdateFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QNAUpdateFormController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		int qnaNo = Integer.parseInt(request.getParameter("qno"));

		QNA q = new QNAService().selectQNA(qnaNo);

		ArrayList<Attachment> list = new QNAService().selectAttachmentList(qnaNo);

		request.setAttribute("q", q);

		request.setAttribute("list", list);

		request.getRequestDispatcher("views/notice/qnaUpdateForm.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
