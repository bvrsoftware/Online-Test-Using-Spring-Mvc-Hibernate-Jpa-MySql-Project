package bvrsoftware.com.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name="Mcq25")
public class Mcq25 {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String question;
	private String collegeCode;
    private String corrtAns;
    
    @OneToMany(cascade=CascadeType.ALL,mappedBy="mcq25",fetch=FetchType.EAGER)
	private List<Answer25> anwser25;
    
	private String date;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getCollegeCode() {
		return collegeCode;
	}

	public void setCollegeCode(String collegeCode) {
		this.collegeCode = collegeCode;
	}

	public String getCorrtAns() {
		return corrtAns;
	}

	public void setCorrtAns(String corrtAns) {
		this.corrtAns = corrtAns;
	}

	public List<Answer25> getAnwser25() {
		return anwser25;
	}

	public void setAnwser25(List<Answer25> anwser25) {
		this.anwser25 = anwser25;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	
	
}
