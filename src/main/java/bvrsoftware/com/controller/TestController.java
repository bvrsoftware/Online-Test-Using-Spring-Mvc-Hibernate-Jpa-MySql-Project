package bvrsoftware.com.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import bvrsoftware.com.model.Admins;
import bvrsoftware.com.model.Answer25;
import bvrsoftware.com.model.Colleges;
import bvrsoftware.com.model.Mcq25;
import bvrsoftware.com.model.ResultCul;
import bvrsoftware.com.model.Results;
import bvrsoftware.com.model.Student;
import bvrsoftware.com.service.TestServiceInterface;


@Controller
@RequestMapping("/")
public class TestController {

	@Autowired
	private TestServiceInterface si;
	@Autowired
	private HttpSession hs;
	
	@RequestMapping("/AdminLoginPage")
	String AdminLoginPage()
	{
		return "AdminLogin";
	}
	@RequestMapping(value = "/admin-login-submit",method = RequestMethod.POST)
	String AdminLogin(@RequestParam("user")String user,@RequestParam("pass")String pass,Model m)
	{
		boolean status=false;
		status=si.AdminLoginFuntion(user, pass);
		if(status)
		{
		m.addAttribute("sms","Login Sucessfully");
		return "AdminHome";
		}
		else
		{
		 m.addAttribute("sms","User and password missmatch");		
		return "redirect:AdminLoginPage";
		}
	}
	@RequestMapping("/CollegeLoginPage")
	String CollegeLoginPage()
	{
		return "CollegeLogin";
	}
	@RequestMapping(value = "/College-login-submit",method = RequestMethod.POST)
	String CollegeLogin(@RequestParam("user")String user,@RequestParam("pass")String pass,Model m)
	{
		boolean status=false;
		status=si.CollegeLoginFuntion(user, pass);
		if(status)
		{
		m.addAttribute("sms","Login Sucessfully");
		return "CollegeHome";
		}
		else
		{
		 m.addAttribute("sms","User and password missmatch");
		 return "redirect:CollegeLoginPage";
		}
	}
	@RequestMapping("/StudentLoginPage")
	String StudentLoginPage()
	{
		return "StudentLogin";
	}
	@RequestMapping(value = "/Student-login-submit",method = RequestMethod.POST)
	String StudentLogin(@RequestParam("user")String user,@RequestParam("pass")String pass,Model m)
	{
		boolean status=false;
		status=si.StudentLoginFuntion(user, pass);
		if(status)
		{
		m.addAttribute("sms","Login Sucessfully");
		return "StudentHome";
		}
		else
		{
		 m.addAttribute("sms","User and password missmatch");		
		  return "redirect:StudentLoginPage";
		}
	}
	@RequestMapping("/AdminHome")
	String AdminHomePage(Model m)
	{
		return "AdminHome";
	}
	@RequestMapping("/CollegeHome")
	String CollegeHomePage(Model m)
	{
		return "CollegeHome";
	}
	@RequestMapping("/StudentHome")
	String StudentHomePage(Model m)
	{
		return "StudentHome";
	}
	@RequestMapping("/AdminInsertPage")
	String AdminInsertPage(Model m)
	{
		m.addAttribute("data", new Admins());
		return "AdminSaveOrUpdate";
	}
	@RequestMapping("/AdminUpdatePage/{id}")
	String AdminUpdatePage(@PathVariable("id")int id,Model m)
	{
		m.addAttribute("data", si.AdminGetById(id));
		return "AdminSaveOrUpdate";
	}
	@RequestMapping(value = "/admin-submit",method = RequestMethod.POST)
	String AdminSave(@ModelAttribute("Admins")Admins ad,Model m)
	{
		si.AdminSaveOrUpdate(ad);
		return "redirect:/Admins";
	}
	@RequestMapping(value = "/Admins")
	String AdminList(Model m)
	{
		m.addAttribute("list", si.AdminList());
		return "Admins";
	}
	@RequestMapping("/CollegeInsertPage")
	String CollegeInsertPage(Model m)
	{
		m.addAttribute("data", new Colleges());
		return "CollegeSaveOrUpdate";
	}
	@RequestMapping("/CollegeUpdatePage/{id}")
	String CollegeUpdatePage(@PathVariable("id")int id,Model m)
	{
		m.addAttribute("data", si.CollegeGetById(id));
		return "CollegeSaveOrUpdate";
	}
	@RequestMapping("/CollegeDeletePage/{id}")
	String CollegeDeletePage(@PathVariable("id")int id,Model m)
	{
		si.CollegeDeleteById(id);
		return "redirect:/Colleges";
	}
	@RequestMapping(value = "/college-submit",method = RequestMethod.POST)
	String CollegeSave(@ModelAttribute("Colleges")Colleges cls,Model m)
	{
		cls.setDate(new SimpleDateFormat("dd/MM/yyyy").format(new Date()));
		si.CollegeSaveOrUpdate(cls);
		return "redirect:/Colleges";
	}
	@RequestMapping(value = "/Colleges")
	String CollegeList(Model m)
	{
		m.addAttribute("list", si.CollegeList());
		return "Colleges";
	}
	@RequestMapping("/StudentInsertPage")
	String StudentInsertPage(Model m)
	{
		m.addAttribute("list", si.CollegeList());
		m.addAttribute("data", new Student());
		return "StudentSaveOrUpdate";
	}
	@RequestMapping("/StudentUpdatePage/{id}")
	String StudentUpdatePage(@PathVariable("id")int id,Model m)
	{
		m.addAttribute("list", si.CollegeList());
		m.addAttribute("data", si.StudentGetById(id));
		return "StudentSaveOrUpdate";
	}
	@RequestMapping("/StudentDeleteByAdminPage/{id}")
	String StudentDeleteByAdminPage(@PathVariable("id")int id,Model m)
	{
		si.StudentDeleteById(id);
		return "redirect:/Students";
	}
	@RequestMapping("/StudentDeleteByCollegePage/{id}")
	String StudentDeleteByCollegePage(@PathVariable("id")int id,Model m)
	{
		si.StudentDeleteById(id);
		return "Colleges";
	}
	@RequestMapping(value = "/student-submit",method = RequestMethod.POST)
	String StudentSave(@ModelAttribute("Student")Student std,Model m)
	{
        std.setDate(new SimpleDateFormat("dd/MM/yyyy").format(new Date()));
		si.StudentSaveOrUpdate(std);
		return "redirect:/#";
	}
	@RequestMapping(value = "/Students")
	String StudentList(Model m)
	{
		m.addAttribute("list", si.StudentList());
		return "Students";
	}
	@RequestMapping(value = "/CollegeStudents")
	String CollegeStudents(Model m)

	{
		m.addAttribute("code", hs.getAttribute("collegecode"));
		m.addAttribute("list", si.StudentList());
		return "CollegeStudents";
	}
	@RequestMapping(value = "/Mcq25-Add-Question")
	String Mcq25_Add_Question(Model m)

	{
		m.addAttribute("mcq25", new Mcq25());
		return "Mcq25-Add-Question";
	}
	@RequestMapping(value="/Mcq25-Add-Question-Submit",method=RequestMethod.POST)
	public String Mcq25_Add_Question_Submitt(@Valid @ModelAttribute("mcq20")Mcq25 mcq,HttpServletRequest r,BindingResult br,Model m)
	{
		
		if(br.hasErrors())
		{
		return "Mcq25-Add-Question";
		}
		else
		{
			if(mcq.getId()==0)
			{
				Answer25 ans1=new Answer25();
				String option1=r.getParameter("option1");
				ans1.setAnwser(option1);
				ans1.setCollegeCode((String)hs.getAttribute("collegecode"));
				ans1.setMcq25(mcq);
				Answer25 ans2=new Answer25();
				String option2=r.getParameter("option2");
				ans2.setAnwser(option2);
				ans2.setCollegeCode((String)hs.getAttribute("collegecode"));
				ans2.setMcq25(mcq);
				Answer25 ans3=new Answer25();
				String option3=r.getParameter("option3");
				ans3.setAnwser(option3);
				ans3.setCollegeCode((String)hs.getAttribute("collegecode"));
				ans3.setMcq25(mcq);
				Answer25 ans4=new Answer25();
				String option4=r.getParameter("option4");
				ans4.setAnwser(option4);
				ans4.setCollegeCode((String)hs.getAttribute("collegecode"));
				ans4.setMcq25(mcq);
				ArrayList<Answer25> list=new ArrayList<Answer25>();
				list.add(ans1);
				list.add(ans2);
				list.add(ans3);
				list.add(ans4);
				mcq.setDate(new SimpleDateFormat("dd/MM/yyyy").format(new Date()));
				mcq.setAnwser25(list);
				si.Mcq25_Add_Question(mcq);
				m.addAttribute("sms", "Addition Successfully !....");
			    return "redirect:/Mcq25-CollegeTable-Question";
			}
			else
			{
				mcq.setCollegeCode(hs.getAttribute("collegecode").toString());
				mcq.setDate(new SimpleDateFormat("dd/MM/yyyy").format(new Date()));
				si.Mcq25_Update_Question(mcq);
				m.addAttribute("sms", "Updatation Successfully !....");
				return "redirect:/Mcq25-CollegeTable-Question";
			}
		}
	
	}
	@RequestMapping(value = "/Mcq25-table-Question")
	String Mcq25_table_Question(Model m)
	{
		m.addAttribute("mcq25", si.Mcq25_List_Question());
		return "Mcq25-table-Question";
	}
	@RequestMapping(value = "/Mcq25-test-Question")
	String Mcq25_test_Question(Model m)
	{
		int id=Integer.parseInt(hs.getAttribute("Sid")+"");
		m.addAttribute("std", si.StudentGetById(id));
		m.addAttribute("code", hs.getAttribute("collegecode"));
		m.addAttribute("mcq25", si.Mcq25_List_Question());
		return "Mcq25-test-Question";
	}
	@RequestMapping(value="/Mcq25-test-Question-Submit",method=RequestMethod.POST)
	public String MCQ25_test_Qeuestion_Submit(HttpServletRequest r,Model m)
	{
		try {		
		String ques1=r.getParameter("ques1");
		String ques2=r.getParameter("ques2");
		String ques3=r.getParameter("ques3");
		String ques4=r.getParameter("ques4");
		String ques5=r.getParameter("ques5");
		String ques6=r.getParameter("ques6");
		String ques7=r.getParameter("ques7");
		String ques8=r.getParameter("ques8");
		String ques9=r.getParameter("ques9");
		String ques10=r.getParameter("ques10");
		String ques11=r.getParameter("ques11");
		String ques12=r.getParameter("ques12");
		String ques13=r.getParameter("ques13");
		String ques14=r.getParameter("ques14");
		String ques15=r.getParameter("ques15");
		String ques16=r.getParameter("ques16");
		String ques17=r.getParameter("ques17");
		String ques18=r.getParameter("ques18");
		String ques19=r.getParameter("ques19");
		String ques20=r.getParameter("ques20");
		String ques21=r.getParameter("ques21");
		String ques22=r.getParameter("ques22");
		String ques23=r.getParameter("ques23");
		String ques24=r.getParameter("ques24");
		String ques25=r.getParameter("ques25");
		
		ArrayList<String> question=new ArrayList<String>();
		question.add(ques1);
		question.add(ques2);
		question.add(ques3);
		question.add(ques4);
		question.add(ques5);
		question.add(ques6);
		question.add(ques7);
		question.add(ques8);
		question.add(ques9);
		question.add(ques10);
		question.add(ques11);
		question.add(ques12);
		question.add(ques13);
		question.add(ques14);
		question.add(ques15);
		question.add(ques16);
		question.add(ques17);
		question.add(ques18);
		question.add(ques19);
		question.add(ques20);
		question.add(ques21);
		question.add(ques22);
		question.add(ques23);
		question.add(ques24);
		question.add(ques25);
		
		String ans1=r.getParameter("ans1");
		String ans2=r.getParameter("ans2");
		String ans3=r.getParameter("ans3");
		String ans4=r.getParameter("ans4");
		String ans5=r.getParameter("ans5");
		String ans6=r.getParameter("ans6");
		String ans7=r.getParameter("ans7");
		String ans8=r.getParameter("ans8");
		String ans9=r.getParameter("ans9");
		String ans10=r.getParameter("ans10");
		String ans11=r.getParameter("ans11");
		String ans12=r.getParameter("ans12");
		String ans13=r.getParameter("ans13");
		String ans14=r.getParameter("ans14");
		String ans15=r.getParameter("ans15");
		String ans16=r.getParameter("ans16");
		String ans17=r.getParameter("ans17");
		String ans18=r.getParameter("ans18");
		String ans19=r.getParameter("ans19");
		String ans20=r.getParameter("ans20");
		String ans21=r.getParameter("ans21");
		String ans22=r.getParameter("ans22");
		String ans23=r.getParameter("ans23");
		String ans24=r.getParameter("ans24");
		String ans25=r.getParameter("ans25");
		
		ArrayList<String> answer=new ArrayList<String>();
		answer.add(ans1);
		answer.add(ans2);
		answer.add(ans3);
		answer.add(ans4);
		answer.add(ans5);
		answer.add(ans6);
		answer.add(ans7);
		answer.add(ans8);
		answer.add(ans9);
		answer.add(ans10);
		answer.add(ans11);
		answer.add(ans12);
		answer.add(ans13);
		answer.add(ans14);
		answer.add(ans15);
		answer.add(ans16);
		answer.add(ans17);
		answer.add(ans18);
		answer.add(ans19);
		answer.add(ans20);
		answer.add(ans21);
		answer.add(ans22);
		answer.add(ans23);
		answer.add(ans24);
		answer.add(ans25);
		
		Results result=new Results();
		result.setQuestionsId(question.toString());
		result.setStdId(hs.getAttribute("Sid").toString());
		result.setDate(new SimpleDateFormat("dd/MM/yyyy").format(new Date()));
		result.setAnswerId(answer+"");
		result.setCollegeCode(hs.getAttribute("collegecode").toString());;
		System.out.println(question+" ,"+answer);
		si.Mcq25_result_add(result);
		m.addAttribute("sms", "Thank You");
		return "redirect:StudentHome";
		}
		catch (Exception e) {
			// TODO: handle exception
			m.addAttribute("sms", "Exception Error"+e);
			return "redirect:StudentHome";
		}
	}
	@RequestMapping(value = "/Mcq25-Edit-Question")
	String Mcq25_Update_Question(@RequestParam("id")int id,Model m)
	{
		m.addAttribute("mcq25", si.Mcq25_By_Id_Question(id));
		return "Mcq25-Add-Question";
	}
	@RequestMapping(value = "/Mcq25-CollegeTable-Question")
	String Mcq25_CollegeTable_Question(Model m)
	{
		m.addAttribute("code", hs.getAttribute("collegecode"));
		m.addAttribute("mcq25", si.Mcq25_List_Question());
		return "Mcq25-CollegeTable-Question";
	}
	@RequestMapping(value = "/Mcq25-Delete-Question")
	String Mcq25_Delete_Question(@RequestParam("id")int id,Model m)
	{
		si.Mcq25_Delete_Question(id);
		m.addAttribute("code", hs.getAttribute("collegecode"));
		m.addAttribute("mcq25", si.Mcq25_List_Question());
		return "redirect:/Mcq25-CollegeTable-Question";
	}
	@RequestMapping(value = "/Mcq25-Update-Answer")
	String Mcq25_Update_Answer(@RequestParam("id")int id,Model m)
	{
		m.addAttribute("ans25", si.Mcq25_By_Id_Answer(id));
		return "Mcq25-Update-Answer";
	}
	@RequestMapping(value = "/Mcq25-Update-Answer-Submit")
	String Mcq25_Update_Answer_Submit(@RequestParam("id")int id,@RequestParam("anwser")String anwser,Model m)
	{
		si.Mcq25_Update_Answer(id, anwser);
		return "redirect:/Mcq25-CollegeTable-Question";
	}
	
	@RequestMapping(value = "/Mcq25studentResult")
	String Mcq25studentResult(Model m)
	{
		String corra=null;
		List<String> cra = new ArrayList<String>();
		List<Results> list= si.Mcq25_List_Results();
		List<Mcq25> questl=si.Mcq25_List_Question();
		for(Mcq25 l:questl)
		{
			if(l.getCollegeCode().equals(hs.getAttribute("collegecode")))
			{
			   cra.add(l.getCorrtAns());
			}
		}
		corra=cra.toString();
		List<ResultCul> stdmark=new ArrayList<ResultCul>();
		for(Results l:list)
		{
			String ans=l.getAnswerId();
			int inc=corra.compareTo(ans);
			ResultCul value=new ResultCul();
			value.setStdid(l.getStdId());
			value.setMarkPrecentage((25-inc)*4);
			value.setExamDate(l.getDate());
			stdmark.add(value);
		}
		m.addAttribute("code", hs.getAttribute("collegecode"));
	    m.addAttribute("stdmark", stdmark);
	    m.addAttribute("result", list);
	    m.addAttribute("list",si.StudentList());
		return "Mcq25studentResult";
	}
	@GetMapping(value="logout")
	public String logout()
	{
		si.LogOut();
		return "redirect:/";
		
	}
	@RequestMapping(value="/upload-image")
	public String upload_image()
	{
		return "upload-image";	
	}
	@RequestMapping(value="/upload-user-image",method = RequestMethod.POST)
	public String Upload_User_Image_Form_Submit(@RequestParam CommonsMultipartFile file,Model m) throws IOException
	{
		int status=0;
		String ret="/";
		ServletContext context = hs.getServletContext(); 
	   // String path = context.getRealPath("/static/image/");   //this work on server not localhost
	    String path="C:\\Users\\sanjeev kumar\\eclipse-workspace\\bvr\\src\\main\\webapp\\static\\image\\"; //this is work localhost
		String filename=file.getOriginalFilename();
	    int random = (int)(Math.random() * 123456789);
	    filename=random+filename;
	    byte[] bytes = file.getBytes();  
	    BufferedOutputStream stream;
		try {
			stream = new BufferedOutputStream(new FileOutputStream(new File(path + File.separator + filename)));
			stream.write(bytes);
		    status=si.photoUpdate(filename);
		   // String imgname=tempDao.getImgName(1);
		    
		    stream.flush();  
		    stream.close();  
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
		if(status>0)
		{
			if(hs.getAttribute("Cid")!=null)
		      {
		    	  m.addAttribute("sms", "Update  Successfully !!!");
		    	  ret= "CollegeHome";  
		      }
		      else if(hs.getAttribute("Sid")!=null)
		      {
		    	  m.addAttribute("sms", "Update  Successfully !!!");
		    	  ret= "StudentHome";  
		      }
		}
		else
		{
			if(hs.getAttribute("Cid")!=null)
		      {
				m.addAttribute("sms", "Not Update Please Try Agrain !!!");	
				ret= "CollegeHome";  
		      }
		      else if(hs.getAttribute("Sid")!=null)
		      {
		    	  m.addAttribute("sms", "Not Update Please Try Agrain !!!");
		    	  ret= "StudentHome";  
		      }
		  }
		return "redirect:"+ret;
	   }  
	@RequestMapping(value="/change-password")
	public String passwordChangePage()
	{
		return "passwordChange";	
	}
	@RequestMapping(value="/change-password",method = RequestMethod.POST)
	public String change_password_Submit(@RequestParam String  oldp,@RequestParam String  newp,@RequestParam String  rnewp,Model m) throws IOException
	{
		int status=0;
		String ret="/";
		if(newp.equals(rnewp))
		{
			status=si.passwordChange(oldp, newp);
		if(status>0)
		{
			if(hs.getAttribute("Aid")!=null)
		      {
		    	  m.addAttribute("sms", "Update  Successfully !!!");
		    	  ret= "/logout";  
		      }
		      else if(hs.getAttribute("Cid")!=null)
		      {
		    	  m.addAttribute("sms", "Update  Successfully !!!");
		    	  ret= "/logout";  
		      }
		}
		else
		{
			if(hs.getAttribute("Cid")!=null)
		      {
				m.addAttribute("sms", "Old password is not match Please Try Agrain !!!");	
				ret= "CollegeHome";  
		      }
		      else if(hs.getAttribute("Aid")!=null)
		      {
		    	  m.addAttribute("sms", "Old password is not match Please Try Agrain !!!");
		    	  ret= "AdminHome";  
		      }
		  }
		}
		else
		{
			if(hs.getAttribute("Cid")!=null)
		      {
				m.addAttribute("sms", "both password is not match !!!");	
				ret= "CollegeHome";  
		      }
		      else if(hs.getAttribute("Aid")!=null)
		      {
		    	  m.addAttribute("sms", "both password is not match !!!");
		    	  ret= "AdminHome";  
		      }
		}
		return "redirect:"+ret;
	   }
}
