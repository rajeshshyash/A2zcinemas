package com.a2z.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.codec.Base64;
import org.springframework.stereotype.Service;

import com.a2z.dao.UserDao;
import com.a2z.model.User;
import com.a2z.to.UserTo;


@Service("usersService")
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userdao;
	
	//private static List<User> users;	
	@Override
	public User findUserByUserName(String userName) {
		try{
			return userdao.findUserByUserName(userName);
    	}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public Long findUserIdByUserName(String userName) {
		return userdao.findUserIdByUserName(userName);
	}
	
	@Override
	public User saveUser(UserTo userTo) {
        User userm = new User();
 		
		userm.setFirstName(userTo.getFirstName());
		userm.setLastName(userTo.getLastName());
		userm.setMobile(userTo.getMobile());
		userm.setProfessionCat(userTo.getProfessionCat());
		userm.setActorType(userTo.getActorType());
		userm.setBackSupportTeam(userTo.getBackSupportTeam());
		userm.setRegAgency(userTo.getRegAgency());
		userm.setUserName(userTo.getUserName());
		userm.setEmail(userTo.getEmail());
		byte[] bytes = userTo.getPassword().getBytes();
		byte[] encodedBytes = Base64.encode(bytes );
		userm.setPassword(new String(encodedBytes));
		userm.setSignupId(userTo.getSignupId());
		
		userdao.saveUser(userm);
		
		return userm;
		
	}

	@Override
	public UserTo validateUser(String userName, String password) {
		User user = userdao.findUserByUserName(userName);
		//decrypyt it
		String dbPassword = user.getPassword();
		byte[] bytes = dbPassword.getBytes();
		byte[] decodeBytes = Base64.decode(bytes);
		String decodedPassword = new String(decodeBytes);
		String message = "Invailed Username or password.";
		//String username; 
		//String passw; 
		String isValid;
		if(userName.equalsIgnoreCase(user.getUserName()) && password.equalsIgnoreCase(decodedPassword)){
			isValid = "true";
			System.out.println("user match");
		}else{
			isValid = "false";
			System.out.println("no");
		}
		
		/*if((userName==null || userName.length()==0 || userName.equals("") ) && userName==null){
			username = "Username should not be empty.";
		}else if((password==null || password.length()==0 || password.equals("") ) && password==null){
			passw = "Password should not be empty.";
		}else{
			if(userName.equalsIgnoreCase(user.getUserName())&& password.equalsIgnoreCase(decodedPassword)){
				isValid = "true";
				System.out.println("yes");
			}
		}*/
		
		UserTo userm = convertUserToUserTo(user);
		userm.setIsUserValid(isValid);
		userm.setErrorMessege(message);
		return userm;
	}

	private UserTo convertUserToUserTo(User user) {
		UserTo userm = new UserTo();
		
		userm.setUserId(user.getUserId());
		userm.setFirstName(user.getFirstName());
		userm.setLastName(user.getLastName());
		userm.setMobile(user.getMobile());
		userm.setProfessionCat(user.getProfessionCat());
		userm.setActorType(user.getActorType());
		userm.setBackSupportTeam(user.getBackSupportTeam());
		userm.setRegAgency(user.getRegAgency());
		userm.setUserName(user.getUserName());
		userm.setEmail(user.getEmail());
		
		return userm;
	}

	@Override
	public User autologin(String username, String password) {
		User user = userdao.findUserByUserName(username);
		
		String dbPassword =user.getPassword();
		byte[] bytes = dbPassword.getBytes();
		byte[] decodeBytes = Base64.decode(bytes);
		String decodedPassword = new String(decodeBytes);
		
		/*String isValid = "false";
		if(password.equalsIgnoreCase(decodedPassword)){
			isValid = "true";
		}
		
		user.setIsValid(isValid);*/
		
		return user;
	}
	
	@Override
	public List<?> findAllUsers() {
		return userdao.findAllUsers();
	}
	
	@Override
	public List<?> getUserDetailsProfile(Long userId) {
		return userdao.getUserDetailsProfile(userId);
	}
	

}
