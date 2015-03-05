package com.klymchuk.flow.objects;

import java.util.ArrayList;

import org.springframework.stereotype.Component;
import org.springframework.webflow.execution.RequestContext;

@Component
public class UserService {
	
	private ArrayList<User> userList = new ArrayList<User>(); 
	
	public UserService() {
		userList.add(new User("user", "pass"));
	}

	public boolean userExist(User user, RequestContext contex) {
		
		System.out.println(contex.getFlashScope().asMap());
		
		if (userList.contains(user)){
			return true;	
		} else {
			return false; 
		}
	}
	
	public String createUser(User user){
		
		if (usernameExist(user.getName())) {
			return "exist";
		} else {
			userList.add(user);
			return "success";
		}
	}

	private boolean usernameExist(String username) {
		for (User user : userList) {
			if (user.getName().equals(username)) {
				return true;
			}
		}
		return false;
	}
}

