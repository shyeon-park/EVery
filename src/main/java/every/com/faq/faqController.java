package every.com.faq;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/faq")
public class faqController {
	@Autowired
	private faqDAO dao;
	@Autowired 
	private faqService service;
	@Autowired
	private HttpSession session;
	
	// 자주 묻는 질문 목록 페이지 요청
	@RequestMapping("/toFaqList.do")
	public String toFaqList(Model model) throws Exception {
		List<faqDTO> list = service.faqList();
		model.addAttribute("list", list);
		return "faq/faqList";
	}
	
	// 자주 묻는 질문 상세 페이지 요청
	@RequestMapping("/toDetail.do")
	public String toFaqDetail() {
		return "faq/faqDetail";
	}
	
	// 수정
	@RequestMapping("/modify.do")
	public void modify(faqDTO dto) throws Exception {
		service.modify(dto);
	}
	
	// 삭제
	@RequestMapping("/delete.do")
	public void delete(int seq_faq) throws Exception {
		service.delete(seq_faq);
	}
	
	// 자주 묻는 질문 작성 페이지 요청
	@RequestMapping("/toWrite.do")
	public String toFaqWrite() {
		return "faq/faqWrite";
	}
	
	// 등록
	@RequestMapping("/write.do")
	public String insert(faqDTO dto) throws Exception {
		service.insert(dto);
		return "redirect:/faq/toFaqList.do";
	}
	
}