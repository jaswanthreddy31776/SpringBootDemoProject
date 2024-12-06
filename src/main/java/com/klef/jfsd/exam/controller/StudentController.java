package com.klef.jfsd.exam.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.exam.model.Student;
import com.klef.jfsd.exam.service.StudentService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class StudentController 
{
	@Autowired
	private StudentService studentService;
	
	@GetMapping("/")
	public ModelAndView home()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");
		return mv;
	}
	
	@GetMapping("addstudent")
	public ModelAndView addstudent()
	   {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("addstudent");
	    return mv;
	   }
	
	
	@PostMapping("insertstudent")
	public ModelAndView insertstudent(HttpServletRequest request)
	{
		int id = Integer.parseInt(request.getParameter("sid"));
		String name = request.getParameter("sname");
	    String gender = request.getParameter("sgender");
	    String dept = request.getParameter("sdept");
	    
	    String year = request.getParameter("syear");
	    String semester = request.getParameter("ssemester");
	    
	    String email = request.getParameter("semail");
	    String contact = request.getParameter("scontact");
	    
	    
	      
	      Student student = new Student();
	      student.setId(id);
	      student.setName(name);
	      student.setGender(gender);
	      student.setDepartment(dept);
	      student.setYear(year);
	      student.setSemester(semester);

	      student.setEmail(email);
	      student.setContact(contact);
	      
	      
	      
	      String msg = studentService.StudentRegistration(student);
	      
	      ModelAndView mv = new ModelAndView("regsuccess");
	      mv.addObject("message", msg);
	    
	      return mv;

	}
	
	
	
	 @GetMapping("viewallstudents")
     public ModelAndView viewallstudents()
     {
       ModelAndView mv = new ModelAndView();
       List<Student> studentlist = studentService.viewAllStudents();
       mv.setViewName("viewallstudents");
       mv.addObject("studentlist",studentlist);
       
       long count = studentService.studentcount();
       mv.addObject("count", count);
       return mv;
     }

}
