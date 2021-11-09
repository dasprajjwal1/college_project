package project.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import project.model.User;

@Repository
public class UserDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Transactional
	public int saveUser(User user) {

		int id = (Integer) this.hibernateTemplate.save(user);
		return id;

	}

	public List<User> getAllUsers() {
		 List<User> alluser = this.hibernateTemplate.loadAll(User.class);
		return alluser;
	}

}
