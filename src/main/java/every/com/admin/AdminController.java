package every.com.admin;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import every.com.board.BoardDTO;
import every.com.board.BoardService;
import every.com.member.MemberDTO;
import every.com.utils.BoardPagingService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private AdminService service;
	
	@Autowired
	private BoardService boardService;
	@Autowired
	private HttpSession session;
	
	@Autowired
	private BoardPagingService pagingService;
	
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
	
	@RequestMapping("/")
	public String home() throws Exception {
		return "admin/a_home";
	}
	//관리자 칼럼 매니저 페이지 요청
	@RequestMapping("/columManager.do")
	public String columManager() throws Exception{
		return "admin/columManager";
	}
	//관리자 상세페이지
	
	@RequestMapping(value = "/toDetail.do",  produces="application/json;charset=UTF-8")
	@ResponseBody
	//produces="application/json;charset=UTF-8"
	public String toDetail(int seq_column) throws Exception{
		System.out.println("요청도착");
		
		BoardDTO dto = boardService.selectOne(seq_column);
		Gson json = new Gson();
		String result = json.toJson(dto).toString();
		//System.out.println(result);
		return result;
		

	}
	
	//관리자 칼럼 상세 요청
	@RequestMapping("/columnDetail.do")
	public String columnDetail(Model model, int seq_column) throws Exception{
		
		model.addAttribute("seq_column",seq_column);
		return "admin/columnDetail";
	}
	
	@RequestMapping(value="/boardlist.do", produces="application/json;charset=UTF-8")
	@ResponseBody()
	public String boardlist(int currentPage) throws Exception{
		//System.out.println("currentPage = " + currentPage);
		HashMap<String, Object> naviMap = pagingService.getPageNavi(currentPage);
		ArrayList<BoardDTO> list = pagingService.getBoardList((int)naviMap.get("currentPage"));
		naviMap.put("list", list);
		Gson json = new Gson();
		String result = json.toJson(naviMap).toString();
		//System.out.println(result);
		return result;
	}

	
	// 관리자 회원관리 페이지 요청
	@RequestMapping("/getAdminUser.do")
	public String getAdminUser() throws Exception {
		return "admin/userManagement";
	}
	
	// 관리자 고객지원 페이지 요청
	@RequestMapping("/getClientSupport.do")
	public String getClientSupport(String view, Model model) throws Exception {
		if(view != null || view != "") {
			model.addAttribute("view", view);
		} 
		return "admin/a_clientSupport";
	}
	
	@RequestMapping("/toClientSupport.do")
	public String toClientSupport() throws Exception {
		return "/clientSupport/clientSupport";
	}
	

}
