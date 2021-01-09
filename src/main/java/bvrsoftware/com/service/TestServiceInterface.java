package bvrsoftware.com.service;

import java.util.List;

import bvrsoftware.com.model.Admins;
import bvrsoftware.com.model.Answer25;
import bvrsoftware.com.model.Colleges;
import bvrsoftware.com.model.Mcq25;
import bvrsoftware.com.model.Results;
import bvrsoftware.com.model.Student;

public interface TestServiceInterface {

	public boolean AdminLoginFuntion(String user,String pass);
	public boolean CollegeLoginFuntion(String user,String pass);
	public boolean StudentLoginFuntion(String user,String pass);
	
	public void AdminSaveOrUpdate(Admins admin);
	public Admins AdminGetById(int id);
	public List<Admins> AdminList();
	
	public void CollegeSaveOrUpdate(Colleges college);
	public Colleges CollegeGetById(int id);
	public Colleges CollegeDeleteById(int id);
	public List<Colleges> CollegeList();
	
	public void StudentSaveOrUpdate(Student student);
	public Student StudentGetById(int id);
	public Student StudentDeleteById(int id);
	public List<Student> StudentList();
	
	public void Mcq25_Add_Question(Mcq25 q);
	public void Mcq25_Update_Question(Mcq25 q);
	public Mcq25 Mcq25_Delete_Question(int id);
	public Mcq25 Mcq25_By_Id_Question(int id);
	public List<Mcq25> Mcq25_List_Question();
	public Answer25 Mcq25_By_Id_Answer(int id);
	public void Mcq25_Update_Answer(int id,String ans);
	
	public void Mcq25_result_add(Results result);
	public List<Results> Mcq25_List_Results();
	
	public void LogOut();
	public int photoUpdate(String img);
	public int passwordChange(String oldp,String newp);
}
