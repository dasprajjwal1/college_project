package project.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

	@RequestMapping("/home")
	public String Home() {
		return "home";
	}

	@RequestMapping(path = "/loginNregister", method = RequestMethod.GET)
	public String showform() {
		return "form";
	}

}
