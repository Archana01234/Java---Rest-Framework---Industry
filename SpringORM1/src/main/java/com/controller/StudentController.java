package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.bean.Student;
import com.dao.StudentDao;


@WebServlet("/StudentController")
public class StudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("action");
		ApplicationContext a= new ClassPathXmlApplicationContext("beans.xml");
		StudentDao sdao=a.getBean("studentDao",StudentDao.class);
		
		if(action.equalsIgnoreCase("insert"))
		{
			Student s=new Student();
			s.setFname(request.getParameter("fname"));
			s.setLname(request.getParameter("lname"));
			s.setEmail(request.getParameter("email"));
			sdao.insertstudent(s);
			response.sendRedirect("show.jsp");
			
		}
		else if (action.equalsIgnoreCase("edit"))
		{
			int sid=Integer.parseInt(request.getParameter("sid"));
			Student s=sdao.updatestudent(sid);
			request.setAttribute("s", s);
			request.getRequestDispatcher("update.jsp").forward(request, response);
		}
		else if (action.equalsIgnoreCase("update"))
		{
			Student s=new Student();
			s.setSid(Integer.parseInt(request.getParameter("sid")));
			s.setFname(request.getParameter("fname"));
			s.setLname(request.getParameter("lname"));
			s.setEmail(request.getParameter("email"));
			sdao.insertstudent(s);
			response.sendRedirect("show.jsp");
			
		}
		else if(action.equalsIgnoreCase("delete"))
		{
			int sid=Integer.parseInt(request.getParameter("sid"));
			sdao.deletestudent(sid);
			response.sendRedirect("show.jsp");
		}
	}

}
