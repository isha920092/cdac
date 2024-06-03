package com.app.pages;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.time.LocalDate;
import java.time.Period;


import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.dao.UserDaoImpl;
import com.app.entities.User;

/**
 * Servlet implementation class VoterRegistrationServlet
 */
@WebServlet("/voter_register")
public class VoterRegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDaoImpl userDao;

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		try {
			// create user dao instance
			userDao = new UserDaoImpl();
		} catch (Exception e) {
			System.out.println(e);
			// re throw the exc to WC to inform about init failure
			// API - ServletException(String mesg , Throwable rootCause)
			throw new ServletException("err in init of " + getClass(), e);
		}
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		try {
			// clean up dao
			userDao.cleanUp();
		} catch (Exception e) {
//			throw new RuntimeException
//			("err in destory of " + getClass(), e);
			System.out.println("err in destroy !");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. set resp cont type
		response.setContentType("text/html");
		// 2. get PW to send text , buffered resp
		try (PrintWriter pw = response.getWriter()) {
		// 3. read req params
			String fn = request.getParameter("fn");
			String ln = request.getParameter("ln");
			String email = request.getParameter("em");
			String pwd = request.getParameter("pass");
			String dob = request.getParameter("dob");
			LocalDate birth_date = LocalDate.parse(dob);
			if(Period.between(birth_date, LocalDate.now()).getYears() >= 21) {
				User newVoter=new User(fn, ln, email, pwd, Date.valueOf(dob));
				String res = userDao.voterRegistration(newVoter);
				if(res.equals("Voter registered...."))
					pw.print("<h5>Registration successful, Please <a href='login.html'>Login</a></h5>");
			}
			else {
				pw.print("<h5>Registration unsuccessful, Please check birth date  <a href='voter_register.html'>Try again</a></h5>");
			}
		} catch (Exception e) {
			// re throw the exc to the caller (WC)
			throw new ServletException("err in doPost of " + getClass(), e);
		}
	}

}
