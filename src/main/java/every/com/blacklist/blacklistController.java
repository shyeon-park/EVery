package every.com.blacklist;

import java.util.ArrayList;
import java.util.List;

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
	private blacklistService service;
	
	// 블랙리스트 페이지 요청
	@RequestMapping("/toBlacklist.do")
	public String toBlacklist(Model model) throws Exception {
		List<blacklistDTO> list = service.blacklist();
		model.addAttribute("list", list);
		return "/admin/blacklist/blacklist";
	}
	
	// 수정
	@RequestMapping("/modify.do")
	public void modify(String reason) throws Exception {
		service.modify(reason);
	}
	
	// 삭제
	@ResponseBody
	@RequestMapping("/delete.do")
	public String delete(String id) throws Exception {
		service.delete(id);
		System.out.println(id);
		return "redirect:/admin/blacklist/toBlacklist.do";
	}
	
	// 블랙리스트 추가 페이지 요청
	@RequestMapping("/toInsert.do")
	public String insert(Model model) throws Exception {
		List<MemberDTO> list = service.memberList();
		model.addAttribute("list", list);
		return "/admin/blacklist/blacklistInsert";
	}
	
	// 추가
	@RequestMapping("/insert.do")
	public String insert(blacklistDTO dto) throws Exception {
		service.insert(dto);
		return "redirect:/admin/blacklist/toBlacklist.do";
	}
}
