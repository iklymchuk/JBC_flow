package com.klymchuk.flow.objects;

import java.util.ArrayList;

import org.springframework.stereotype.Component;

@Component
public class UserService {
	
	private ArrayList<User> userList = new ArrayList<User>(); 
	
	public UserService() {
		userList.add(new User("user", "pass"));
	}

	public String checkUser(User user) {
		
		for (User existingUser : userList) {
			if (existingUser.equals(user)){
				return "success";	
			}
		}

		return "failed";

	}
	
	
	public  void createUser(User user){
		userList.add(user);
	}
}

