package com.app.pages;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.dao.CandidateDaoImpl;
import com.app.entities.Candidate;
import com.mysql.cj.x.protobuf.MysqlxCrud.Collection;

/**
 * Servlet implementation class AdminPage
 */
@WebServlet("/admin_page")
public class AdminPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
   

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1 . set resp cont type
				response.setContentType("text/html");
				// 2. PW
				try (PrintWriter pw = response.getWriter()){
					pw.print("<h5> In admin page <h5>");
					pw.print("<h6> Two Candidates with max votes: <h6>");
					HttpSession hs = request.getSession();
					CandidateDaoImpl dao = (CandidateDaoImpl) hs.getAttribute("candidate_dao");
					List<Candidate> candidates = dao.getTop2Candidates();
					for(Candidate c : candidates)
						pw.print("<h6>"+c.getName()+"<h6>");
					Map<String, Integer> analysis = dao.getPartyWiseVotes();
					pw.print("<h6> Party wise analysis of votes: <h6>");
					for(Map.Entry<String, Integer> entry : analysis.entrySet())
						pw.print("<h6>"+entry.getKey()+""+entry.getValue()+"<h6>");
					pw.print("<h5><a href='logout'>Logout</a>");
				} catch (Exception e) {
					throw new ServletException("err in do-get of " + getClass(), e);
				}	
	}

}
