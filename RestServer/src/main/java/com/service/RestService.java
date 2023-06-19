package com.service;


import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.bean.Student;
import com.dao.StudentDao;
import com.google.gson.Gson;

@Path("student")
public class RestService {
	
	Gson gson=new Gson();
	
	@Path("insert")
	@POST
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.TEXT_PLAIN)
	public String insertstudent(String student)
	{
		
		Student s=gson.fromJson(student, Student.class);
		int result=StudentDao.insertStudent(s);
		if(result>0)
		{
		return "Data Inserted Successfully";	
		}
		else
		{
		return "Data Insertion Failed";	
		}
		
	}
	

}
