package every.com.home;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@RequestMapping(value = "/")
	public String home() {
		return "home";
	}
	
	@RequestMapping(value = "/terms")
	public String terms(String view,Model model) {
		if(view.equals(null)) {
			model.addAttribute("view", "service");
		}else {
			model.addAttribute("view", view);
		}
		
		return "terms";
	}
}
