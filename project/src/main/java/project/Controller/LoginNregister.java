package project.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import project.Dao.UserDao;
import project.Services.userServices;
import project.model.User;

@Controller
public class LoginNregister {
	@Autowired
	private userServices userservices;
	@Autowired
	private UserDao userdao;

	@RequestMapping(path = "/login", method = RequestMethod.GET)
	public String showform() {
		return "form";
	}

	@RequestMapping(path = "/registeruser", method = RequestMethod.POST)
	public String processForm(@ModelAttribute User user) {

		int createUser = this.userservices.createUser(user);

		System.out.println("the user is created with id = " + createUser);
		System.out.println(user);

		System.out.println("this is form handler");
		return "home";
	}

	@RequestMapping(value = "/userlogin", method = RequestMethod.POST)
	public String loginUser(@ModelAttribute User user, Model m) {

		List<User> allUsers = (List<User>) this.userdao.getAllUsers();
		System.out.println(user.getEmail());
		if (user != null) {
			for (User i : allUsers) {
				if (user.getPassword().equals(i.getPassword()) && user.getEmail().equals(i.getEmail())) {
					m.addAttribute("username", i.getUsername());
					return "home";
				} else {
					m.addAttribute("error", "Invalid Details");
					return "form";
				}
			}
		} else {
			m.addAttribute("error", "Please enter Details");
			return "form";
		}

		return "home";
	}

}
