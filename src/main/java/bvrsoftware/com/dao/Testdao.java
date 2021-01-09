package bvrsoftware.com.dao;

import java.util.List;


import javax.persistence.Query;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bvrsoftware.com.model.Admins;
import bvrsoftware.com.model.Answer25;
import bvrsoftware.com.model.Colleges;
import bvrsoftware.com.model.Mcq25;
import bvrsoftware.com.model.Results;
import bvrsoftware.com.model.Student;

@Repository
@Transactional
public class Testdao implements TestdaoInterface{

	@Autowired
	private SessionFactory sessionfactory;
    @Autowired
	private HttpSession httpsession;
	@Override
	public boolean AdminLoginFuntion(String user, String pass) {
		// TODO Auto-generated method stub
		Session s=sessionfactory.getCurrentSession();
		boolean status=false;
		
		List<Admins> list =s.createQuery("From Admins where email='"+user+"' and password='"+pass+"'", Admins.class).getResultList();
		
		if ((list != null) && (list.size() > 0)) {
			status= true;
			for(Admins a:list)
			{
				httpsession.setAttribute("Aid", a.getId());
				httpsession.setAttribute("name", a.getName());
				Query q=s.createQuery("UPDATE Admins SET status='Login' WHERE id='"+a.getId()+"'");
				q.executeUpdate();				
			}
		}		
		return status;
		
	}
	@Override
	public boolean CollegeLoginFuntion(String user, String pass) {
		// TODO Auto-generated method stub
		Session s=sessionfactory.getCurrentSession();
		boolean status=false;
		String sql="from Colleges where email=:email and password=:password";
		Query query=s.createQuery(sql);
		query.setParameter("email", user);
		query.setParameter("password", pass);
		
		@SuppressWarnings("unchecked")
		List<Colleges> list =(List<Colleges>) query.getResultList();
		
		if ((list != null) && (list.size() > 0)) {
			status= true;
			for(Colleges clg:list)
			{
				httpsession.setAttribute("Cid", clg.getId());
				httpsession.setAttribute("name", clg.getName());
				httpsession.setAttribute("collegecode", clg.getCollegecode());
				httpsession.setAttribute("photo", clg.getPhoto());
				Query q=s.createQuery("UPDATE Colleges SET status='Login' WHERE id='"+clg.getId()+"'");
				q.executeUpdate();
			}
		}		
		return status;
		
	}
	@Override
	public boolean StudentLoginFuntion(String user, String pass) {
		// TODO Auto-generated method stub
		Session s=sessionfactory.getCurrentSession();
		boolean status=false;
		String sql="from Student where email=:email and dob=:password";
		Query query=s.createQuery(sql);
		query.setParameter("email", user);
		query.setParameter("password", pass);
		
		@SuppressWarnings("unchecked")
		List<Student> list =(List<Student>) query.getResultList();
		
		if ((list != null) && (list.size() > 0)) {
			status= true;
			for(Student std:list)
			{
				httpsession.setAttribute("Sid", std.getId());
				httpsession.setAttribute("name", std.getName());
				httpsession.setAttribute("collegecode", std.getCollagecode());
				httpsession.setAttribute("photo", std.getPhoto());
				Query q=s.createQuery("UPDATE Student SET status='Login' WHERE id='"+std.getId()+"'");
				q.executeUpdate();	
			}
		}		
		return status;
		
	}
	@Override
	public void AdminSaveOrUpdate(Admins admin) {
		// TODO Auto-generated method stub
		Session s=sessionfactory.getCurrentSession();
		s.saveOrUpdate(admin);
		
	}
	@Override
	public Admins AdminGetById(int id) {
		// TODO Auto-generated method stub
		Session s=sessionfactory.getCurrentSession();
		return s.get(Admins.class, new Integer(id));
	}

	@Override
	public List<Admins> AdminList() {
		// TODO Auto-generated method stub
		Session s=sessionfactory.getCurrentSession();
		return s.createQuery("From Admins", Admins.class).getResultList();
	}

	@Override
	public void CollegeSaveOrUpdate(Colleges college) {
		// TODO Auto-generated method stub
		Session s=sessionfactory.getCurrentSession();
		s.saveOrUpdate(college);
	}

	@Override
	public Colleges CollegeGetById(int id) {
		// TODO Auto-generated method stub
		Session s=sessionfactory.getCurrentSession();
		return s.get(Colleges.class, new Integer(id));
	}

	@Override
	public Colleges CollegeDeleteById(int id) {
		// TODO Auto-generated method stub
		Session s=sessionfactory.getCurrentSession();
		Colleges cl=s.get(Colleges.class, new Integer(id));
		s.delete(cl);
		return cl;
	}

	@Override
	public List<Colleges> CollegeList() {
		// TODO Auto-generated method stub
		Session s=sessionfactory.getCurrentSession();
		return s.createQuery("From Colleges", Colleges.class).getResultList();
	}

	@Override
	public void StudentSaveOrUpdate(Student student) {
		// TODO Auto-generated method stub
		Session s=sessionfactory.getCurrentSession();
		s.saveOrUpdate(student);
	}

	@Override
	public Student StudentGetById(int id) {
		// TODO Auto-generated method stub
		Session s=sessionfactory.getCurrentSession();
		return s.get(Student.class, new Integer(id));
	}

	@Override
	public Student StudentDeleteById(int id) {
		// TODO Auto-generated method stub
		Session s=sessionfactory.getCurrentSession();
		Student st=s.get(Student.class, new Integer(id));
		s.delete(st);
		return st;
	}

	@Override
	public List<Student> StudentList() {
		// TODO Auto-generated method stub
		Session s=sessionfactory.getCurrentSession();
		return s.createQuery("From Student",Student.class).getResultList();
	}
	@Override
	public void Mcq25_Add_Question(Mcq25 q) {
		// TODO Auto-generated method stub
		Session session=sessionfactory.getCurrentSession();
		try
		{
			String collegecode=(String) httpsession.getAttribute("collegecode");
			q.setCollegeCode(collegecode);
			session.save(q);
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	@Override
	public void Mcq25_Update_Question(Mcq25 q) {
		// TODO Auto-generated method stub
		Session session=sessionfactory.getCurrentSession();
		try {
			session.update(q);
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}
	@Override
	public Mcq25 Mcq25_Delete_Question(int id) {
		// TODO Auto-generated method stub
		Session session=sessionfactory.getCurrentSession();
		Mcq25 obj=session.get(Mcq25.class, new Integer(id));
		if(obj!=null)
		{
			session.delete(obj);
		}
		return obj;
	}
	@Override
	public Mcq25 Mcq25_By_Id_Question(int id) {
		// TODO Auto-generated method stub
		Session session=sessionfactory.getCurrentSession();
		Mcq25 obj=session.get(Mcq25.class, new Integer(id));
		return obj;
	}
	@Override
	public List<Mcq25> Mcq25_List_Question() {
		Session session=sessionfactory.getCurrentSession();
		List<Mcq25> list=session.createQuery("from Mcq25",Mcq25.class).getResultList();
		return list;
	}
	@Override
	public Answer25 Mcq25_By_Id_Answer(int id) {
		// TODO Auto-generated method stub
		Session session=sessionfactory.getCurrentSession();
		Answer25 obj=session.get(Answer25.class, new Integer(id));
		return obj;
	}
	@Override
	public void Mcq25_Update_Answer(int id,String ans) {
		// TODO Auto-generated method stub
		Session session=sessionfactory.getCurrentSession();
		Query q=session.createQuery("UPDATE Answer25 SET anwser='"+ans+"' WHERE id='"+id+"'");
		q.executeUpdate();
	}
	@Override
	public void Mcq25_result_add(Results result) {
		// TODO Auto-generated method stub
		Session session=sessionfactory.getCurrentSession();
		session.save(result);
	}
	@Override
	public List<Results> Mcq25_List_Results() {
		// TODO Auto-generated method stub
		Session session=sessionfactory.getCurrentSession();
		return session.createQuery("From Results",Results.class).getResultList();
	}
	@Override
	public void LogOut() {
		// TODO Auto-generated method stub
		Session session=sessionfactory.getCurrentSession();
		Query q = null;
		int id = 0;
		if(httpsession.getAttribute("Aid")!=null)
	      {
	    	  id=Integer.parseInt(httpsession.getAttribute("Aid").toString()); 
	    	  q=session.createQuery("UPDATE Admins SET status='Logout' WHERE id='"+id+"'");
	    	  
	      }
	      else if(httpsession.getAttribute("Cid")!=null)
	      {
	    	  id=Integer.parseInt(httpsession.getAttribute("Cid").toString());
	    	  q=session.createQuery("UPDATE Colleges SET status='Logout' WHERE id='"+id+"'");
	      }
	      else if(httpsession.getAttribute("Sid")!=null)
	      {
	    	  id=Integer.parseInt(httpsession.getAttribute("Sid").toString());
	    	  q=session.createQuery("UPDATE Student SET status='Logout' WHERE id='"+id+"'");	  
	      }
		q.executeUpdate();
		httpsession.invalidate();
	}
	@Override
	public int photoUpdate(String img) {
		// TODO Auto-generated method stub
		Session session=sessionfactory.getCurrentSession();
		Query q = null;
		int id = 0;
		if(httpsession.getAttribute("Cid")!=null)
	      {
	    	  id=Integer.parseInt(httpsession.getAttribute("Cid").toString()); 
	    	  q=session.createQuery("UPDATE Colleges SET photo='"+img+"' WHERE id='"+id+"'");
	    	  
	      }
	      else if(httpsession.getAttribute("Sid")!=null)
	      {
	    	  id=Integer.parseInt(httpsession.getAttribute("Sid").toString());
	    	  q=session.createQuery("UPDATE Student SET photo='"+img+"' WHERE id='"+id+"'");	  
	      }
		  return q.executeUpdate();
  }
	@Override
	public int passwordChange(String oldp, String newp) {
		// TODO Auto-generated method stub
		Session session=sessionfactory.getCurrentSession();
		Query q = null;
		int id = 0;
		if(httpsession.getAttribute("Aid")!=null)
	      {
	    	  id=Integer.parseInt(httpsession.getAttribute("Aid").toString()); 
	    	  q=session.createQuery("UPDATE Admins SET password='"+newp+"' WHERE password='"+oldp+"' and id='"+id+"'");
	    	  
	      }
	      else if(httpsession.getAttribute("Cid")!=null)
	      {
	    	  id=Integer.parseInt(httpsession.getAttribute("Cid").toString());
	    	  q=session.createQuery("UPDATE Student SET password='"+newp+"' WHERE password='"+oldp+"' and id='"+id+"'");	  
	      }
		  return q.executeUpdate();
	}
}
