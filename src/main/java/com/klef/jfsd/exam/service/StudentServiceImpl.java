package com.klef.jfsd.exam.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.exam.model.Student;
import com.klef.jfsd.exam.repository.StudentRepository;

@Service
public class StudentServiceImpl implements StudentService
{
	@Autowired
	private StudentRepository studentRepository;

	@Override
	public String StudentRegistration(Student s)
	{
		studentRepository.save(s);
		return "Student Added Successfully";
	}

	@Override
	public List<Student> viewAllStudents() 
	{
		return studentRepository.findAll();
	}

	@Override
	public long studentcount() 
	{
		
		return studentRepository.count();
	}

}
