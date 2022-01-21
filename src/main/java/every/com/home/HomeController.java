package every.com.home;

import org.springframework.stereotype.Controller;
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
	@RequestMapping(value = "/sample")
	public String sample() {
		return "sample";
	}
	@RequestMapping(value = "/aSample")
	public String aSample() {
		return "a_sample";
	}
}
