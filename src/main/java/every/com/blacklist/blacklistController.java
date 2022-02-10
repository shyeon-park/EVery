package every.com.blacklist;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import every.com.member.MemberDTO;

@Controller
@RequestMapping("/blacklist")
public class blacklistController {
	@Autowired
	private blacklistDAO dao;
	@Autowired
	private blacklistService service;
	@Autowired
	private HttpSession session;
	
	// 블랙리스트 페이지 요청
	@RequestMapping("/toBlacklist.do")
	public String toBlacklist(Model model) throws Exception {
		List<blacklistDTO> list = service.blacklist();
		model.addAttribute("list", list);
		return "blacklist/blacklist";
	}
	
	// 수정
	@RequestMapping("/modify.do")
	public void modify(String reason) throws Exception {
		service.modify(reason);
	}
	
	// 삭제
	@ResponseBody
	@RequestMapping("/delete.do")
	public void delete(String id) throws Exception {
		
		service.delete(id);
	}
	
	// 검색
	@RequestMapping("/search.do")
	public List<blacklistDTO> search(String id) throws Exception {
		List<blacklistDTO> list = service.search(id);
		return list;
	}
	
	// 블랙리스트 추가 페이지 요청
	@RequestMapping("/toInsert.do")
	public String insert(Model model) throws Exception {
		List<MemberDTO> list = service.memberList();
		model.addAttribute("list", list);
		return "blacklist/blacklistInsert";
	}
	
	// 추가
	@RequestMapping("/insert.do")
	public String insert(blacklistDTO dto) throws Exception {
		service.insert(dto);
		return "redirect:/blacklist/toBlacklist.do";
	}
}
