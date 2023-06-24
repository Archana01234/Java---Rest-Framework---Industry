package com.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.orm.hibernate5.HibernateTemplate;

import com.bean.Student;

public class StudentDao {
	
	private HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	@Transactional
	public void insertstudent(Student s)
	{
		this.hibernateTemplate.saveOrUpdate(s);
	}
	public  List<Student> getallstudent()
	{
		return this.hibernateTemplate.loadAll(Student.class);
	}
	public Student updatestudent(int sid)
	{
		return this.hibernateTemplate.get(Student.class, sid);
	}
	@Transactional
	public void deletestudent(int sid)
	{
		Student s=this.hibernateTemplate.get(Student.class, sid);
		this.hibernateTemplate.delete(s);
	}

}
