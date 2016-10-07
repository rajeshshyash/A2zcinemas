package com.a2z.model;


import java.io.Serializable;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name ="profile_details")
public class UserProfilePersonalInfo  implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="profile_details_id")
	private long profileDetailsId;
	
	@Column(name="father_name")
	private String fatherName;
	
	@Column(name="gender")
	private String gender;
	
	@Temporal(TemporalType.DATE)
	@Column(name="dob")
	private Date dob;
	
	@Column(name="age")
	private String age;
	
	@Column(name="whatsup_no")
	private String whatsupNo;
	
	@Column(name="landline_no")
	private String landlineNo;
	
	@Column(name="education_qualification")
	private String eduQualification;
	
	@Column(name="course_related_profession")
	private String courseRelatedProfession;
	
	@Column(name="language")
	private String language;
	
	/*@OneToOne
	@JoinColumn(name = "user_id")
	private User user;*/
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "user_id")
	private User user;

		
	public UserProfilePersonalInfo() {
	}

	public long getProfileDetailsId() {
		return profileDetailsId;
	}

	public void setProfileDetailsId(long profileDetailsId) {
		this.profileDetailsId = profileDetailsId;
	}

	public String getFatherName() {
		return fatherName;
	}

	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getWhatsupNo() {
		return whatsupNo;
	}

	public void setWhatsupNo(String whatsupNo) {
		this.whatsupNo = whatsupNo;
	}

	public String getLandlineNo() {
		return landlineNo;
	}

	public void setLandlineNo(String landlineNo) {
		this.landlineNo = landlineNo;
	}

	public String getEduQualification() {
		return eduQualification;
	}

	public void setEduQualification(String eduQualification) {
		this.eduQualification = eduQualification;
	}

	public String getCourseRelatedProfession() {
		return courseRelatedProfession;
	}

	public void setCourseRelatedProfession(String courseRelatedProfession) {
		this.courseRelatedProfession = courseRelatedProfession;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	
}
