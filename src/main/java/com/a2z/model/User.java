package com.a2z.model;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name = "user", uniqueConstraints = {
		@UniqueConstraint(columnNames = "email_id"),
		@UniqueConstraint(columnNames = "username")})
public class User implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "user_id", unique = true, nullable = false)
	private Long userId;
	
	@Column(name = "first_name")
	private String firstName;
	
	@Column(name = "last_name")
	private String lastName;
	
	@Column(name = "contact_no")
	private String mobile;
	
	@Column(name = "profession")
	private String professionCat;
	
	@Column(name = "actorType")
	private String actorType;
	
	@Column(name = "backSupportTeam")
	private String backSupportTeam;
	
	@Column(name = "regAgency")
	private String regAgency;
	
	@Column(name = "username")
	private String userName;
	
	@Column(name = "email_id")
	private String email;
	
	@Column(name = "password", nullable = false, length = 50)
	private String password;
	
	@Transient
	private String rePassword;
	
	@Column(name = "signup_id")
	private int signupId;
	
	/*@OneToOne(cascade = CascadeType.ALL)
	private UserProfilePersonalInfo userProfilePersonalInfo;*/
	 //@ElementCollection(targetClass=UserProfilePersonalInfo.class)
	private Set<UserProfilePersonalInfo> userProfilePersonalInfo = new HashSet<UserProfilePersonalInfo>();
	
	public User() {
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getProfessionCat() {
		return professionCat;
	}

	public void setProfessionCat(String professionCat) {
		this.professionCat = professionCat;
	}

	public String getActorType() {
		return actorType;
	}

	public void setActorType(String actorType) {
		this.actorType = actorType;
	}

	public String getBackSupportTeam() {
		return backSupportTeam;
	}

	public void setBackSupportTeam(String backSupportTeam) {
		this.backSupportTeam = backSupportTeam;
	}

	public String getRegAgency() {
		return regAgency;
	}

	public void setRegAgency(String regAgency) {
		this.regAgency = regAgency;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getRePassword() {
		return rePassword;
	}

	public void setRePassword(String rePassword) {
		this.rePassword = rePassword;
	}

	public int getSignupId() {
		return signupId;
	}

	public void setSignupId(int signupId) {
		this.signupId = signupId;
	}
	@Access(AccessType.PROPERTY)
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "user")
	public Set<UserProfilePersonalInfo> getUserProfilePersonalInfo() {
		return userProfilePersonalInfo;
	}

	public void setUserProfilePersonalInfo(Set<UserProfilePersonalInfo> userProfilePersonalInfo) {
		this.userProfilePersonalInfo = userProfilePersonalInfo;
	}

	
	

}
