package every.com.blacklist;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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

	// 삭제
	@ResponseBody
	@RequestMapping("/delete.do")
	public String delete(@RequestParam(value = "blacklist[]") String[] blacklist) throws Exception {
		System.out.print(blacklist[0]);
		if (service.delete(blacklist) != 0) {
			return "success";
		} else {
			return "fail";
		}

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
	@ResponseBody
	public String insert(blacklistDTO dto) throws Exception {
		if(service.insert(dto) != 0) {
			return "success";
		} else {
			return "fail";
		}
	}
	
}
