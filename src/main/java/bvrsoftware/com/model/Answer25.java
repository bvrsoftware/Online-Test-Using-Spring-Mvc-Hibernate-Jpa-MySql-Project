package bvrsoftware.com.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="Mcq_anwser25")
public class Answer25 {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String anwser;
	private String collegeCode;
	
	@ManyToOne(cascade=CascadeType.ALL)
	private Mcq25 mcq25;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAnwser() {
		return anwser;
	}

	public void setAnwser(String anwser) {
		this.anwser = anwser;
	}

	public String getCollegeCode() {
		return collegeCode;
	}

	public void setCollegeCode(String collegeCode) {
		this.collegeCode = collegeCode;
	}

	public Mcq25 getMcq25() {
		return mcq25;
	}

	public void setMcq25(Mcq25 mcq25) {
		this.mcq25 = mcq25;
	}
	
}
