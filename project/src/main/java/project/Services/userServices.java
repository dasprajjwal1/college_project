package project.Services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import project.Dao.UserDao;
import project.model.User;

@Service
public class userServices {
	@Autowired
	private UserDao dao;
	
	public int createUser(User user)
	{
		return this.dao.saveUser(user);
	}
	

}
