package every.com.admin;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private AdminService service;
	@Autowired
	private HttpSession session;
	
	// 관리자 로그인
	@RequestMapping("/adminLogin.do")
	@ResponseBody
	public String adminLogin(String id, String pw) throws Exception {
		System.out.println(id);
		System.out.println(pw);
		
		AdminDTO dto = new AdminDTO(id, pw);
		if(service.isAdminLoginOk(dto)) {
			session.setAttribute("adminLoginSession", dto);
			return "loginSuccess";
		} else {
			return "loginFail";
		}
	}
	
	// 관리자 로그아웃
	@RequestMapping("/adminLogout.do")
	public String adminLogout() throws Exception {
		session.removeAttribute("adminLoginSession");
		System.out.println(session.getAttribute("adminLoginSession"));
		return "redirect: /";
	}
}
