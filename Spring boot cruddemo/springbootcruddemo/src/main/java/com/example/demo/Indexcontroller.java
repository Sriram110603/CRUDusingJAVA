package com.example.demo;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Indexcontroller {
	@Autowired
	StudentDB studentDB;
	@RequestMapping("webapp")
public ModelAndView home() {
	ModelAndView mv=new ModelAndView() ;
	mv.setViewName("welcome.jsp");
	return mv;
} 
	@RequestMapping("addStudent")
public ModelAndView adduser(Student stud) {
	//System.out.println(stud.getStudentName());
	//System.out.println(stud.getRollNo());
	ModelAndView mv=new ModelAndView();
	mv.addObject("StudentDetails",stud);
	mv.setViewName("display.jsp");
	studentDB.save(stud);
	return mv;
	}
	@RequestMapping("viewStudent")
	public ModelAndView display(Student stud){
	Optional<Student> op = studentDB.findById(stud.getRollNo());
	Student student =op.get();
	ModelAndView mv = new ModelAndView();
	mv.addObject("StudentDetails",student);
	mv.setViewName("display.jsp");
	return mv;	
	}
	
	
	@RequestMapping("deleteStudent")
	public ModelAndView deleteuser(Student st) {
		
		studentDB.deleteById(st.getRollNo());
		
		ModelAndView mv = new 	ModelAndView();
		mv.addObject("studentdetails",st);
		mv.setViewName("deleted.jsp");
		return mv;
	}
 
	@RequestMapping("updateStudent")
	public ModelAndView update(@RequestParam("rollNo") int rollNo) {
		Optional<Student> op = studentDB.findById(rollNo);
		ModelAndView mv = new ModelAndView();
		if (op.isPresent()) {
			Student student = op.get();
			mv.addObject("student", student);
		} else {
			mv.addObject("message", "Student not found");
		}
		mv.setViewName("update.jsp");
		return mv;
	}
	@RequestMapping("saveUpdatedStudent")
	public ModelAndView saveUpdatedStudent(@ModelAttribute("student") Student stud) {
		ModelAndView mv = new ModelAndView();
		studentDB.save(stud);
		mv.addObject("message", "Student updated successfully");
		mv.setViewName("update.jsp");
		return mv;
	}
}
