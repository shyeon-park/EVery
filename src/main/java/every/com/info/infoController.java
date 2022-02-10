package every.com.info;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/info")
public class infoController {
	@Autowired
	private infoDAO dao;
	@Autowired
	private infoService service;
	@Autowired
	private HttpSession session;
	
	// 공지사항 목록 페이지 요청
	@RequestMapping("/toInfoList.do")
	public String toList(Model model) throws Exception {
		List<infoDTO> list = service.infoList();
		model.addAttribute("list", list);
		return "info/infoList";
	}
	
	// 공지사항 상세 페이지 요청
	@RequestMapping("/toDetail.do")
	public String toInfoDetail() throws Exception {
		return "info/infoDetail";
	}
	
	// 수정
	@RequestMapping("/modify.do")
	public void modify(infoDTO dto) throws Exception {
		service.modify(dto);
	}
	
	// 삭제
	@RequestMapping("/delete.do")
	public void delete(int seq_info) throws Exception {
		service.delete(seq_info);
	}
	
	// 공지사항 작성 페이지 요청
	@RequestMapping("/toWrite.do")
	public String toInfoWrite() throws Exception {
		return "info/infoWrite";
	}
	
	// 등록
	@RequestMapping("/write.do")
	public String insert(infoDTO dto) throws Exception {
		service.insert(dto);
		return "redirect:/info/toInfoList.do";
	}
}
