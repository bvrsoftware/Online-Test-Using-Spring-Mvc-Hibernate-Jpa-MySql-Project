package bvrsoftware.com.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bvrsoftware.com.dao.TestdaoInterface;
import bvrsoftware.com.model.Admins;
import bvrsoftware.com.model.Answer25;
import bvrsoftware.com.model.Colleges;
import bvrsoftware.com.model.Mcq25;
import bvrsoftware.com.model.Results;
import bvrsoftware.com.model.Student;

@Service
public class TestService implements TestServiceInterface{

	@Autowired
	private TestdaoInterface dao;
	@Override
	public boolean AdminLoginFuntion(String user, String pass) {
		return dao.AdminLoginFuntion(user, pass);
	}
	@Override
	public boolean CollegeLoginFuntion(String user, String pass) {
		return dao.CollegeLoginFuntion(user, pass);
	}
	@Override
	public boolean StudentLoginFuntion(String user, String pass) {
		return dao.StudentLoginFuntion(user, pass);
	}
	@Override
	public void AdminSaveOrUpdate(Admins admin) {
		// TODO Auto-generated method stub
		dao.AdminSaveOrUpdate(admin);
	}

	@Override
	public Admins AdminGetById(int id) {
		// TODO Auto-generated method stub
		return dao.AdminGetById(id);
	}

	@Override
	public List<Admins> AdminList() {
		// TODO Auto-generated method stub
		return dao.AdminList();
	}

	@Override
	public void CollegeSaveOrUpdate(Colleges college) {
		// TODO Auto-generated method stub
		dao.CollegeSaveOrUpdate(college);
	}

	@Override
	public Colleges CollegeGetById(int id) {
		// TODO Auto-generated method stub
		return dao.CollegeGetById(id);
	}

	@Override
	public Colleges CollegeDeleteById(int id) {
		// TODO Auto-generated method stub
		return dao.CollegeDeleteById(id);
	}

	@Override
	public List<Colleges> CollegeList() {
		// TODO Auto-generated method stub
		return dao.CollegeList();
	}

	@Override
	public void StudentSaveOrUpdate(Student student) {
		// TODO Auto-generated method stub
		dao.StudentSaveOrUpdate(student);
	}

	@Override
	public Student StudentGetById(int id) {
		// TODO Auto-generated method stub
		return dao.StudentGetById(id);
	}

	@Override
	public Student StudentDeleteById(int id) {
		// TODO Auto-generated method stub
		return dao.StudentDeleteById(id);
	}

	@Override
	public List<Student> StudentList() {
		// TODO Auto-generated method stub
		return dao.StudentList();
	}
	@Override
	public void Mcq25_Add_Question(Mcq25 q) {
		// TODO Auto-generated method stub
		dao.Mcq25_Add_Question(q);
	}
	@Override
	public void Mcq25_Update_Question(Mcq25 q) {
		// TODO Auto-generated method stub
		dao.Mcq25_Update_Question(q);
	}
	@Override
	public Mcq25 Mcq25_Delete_Question(int id) {
		// TODO Auto-generated method stub
		return dao.Mcq25_Delete_Question(id);
	}
	@Override
	public Mcq25 Mcq25_By_Id_Question(int id) {
		// TODO Auto-generated method stub
		return dao.Mcq25_By_Id_Question(id);
	}
	@Override
	public List<Mcq25> Mcq25_List_Question() {
		// TODO Auto-generated method stub
		return dao.Mcq25_List_Question();
	}
	@Override
	public Answer25 Mcq25_By_Id_Answer(int id) {
		// TODO Auto-generated method stub
		return dao.Mcq25_By_Id_Answer(id);
	}
	@Override
	public void Mcq25_Update_Answer(int id,String ans) {
		// TODO Auto-generated method stub
		dao.Mcq25_Update_Answer(id,ans);
	}
	@Override
	public void Mcq25_result_add(Results result) {
		// TODO Auto-generated method stub
		dao.Mcq25_result_add(result);
	}
	@Override
	public List<Results> Mcq25_List_Results() {
		// TODO Auto-generated method stub
		return dao.Mcq25_List_Results();
	}
	@Override
	public void LogOut() {
		// TODO Auto-generated method stub
		dao.LogOut();
	}
	@Override
	public int photoUpdate(String img) {
		// TODO Auto-generated method stub
		return dao.photoUpdate(img);
	}
	@Override
	public int passwordChange(String oldp, String newp) {
		// TODO Auto-generated method stub
		return dao.passwordChange(oldp, newp);
	}

}
