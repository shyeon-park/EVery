package every.com.faq;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/faq")
public class faqController {
	@Autowired 
	private faqService service;
	
	
	/* 회원 */
	
	// 자주 묻는 질문 목록 페이지 요청
	@RequestMapping("/toFaqList.do")
	public String faqList(Model model) throws Exception {
		List<faqDTO> list = service.faqList();
		model.addAttribute("list", list);
		return "/faq/faqList";
	}
	
	// 자주 묻는 질문 상세 페이지 요청
	@RequestMapping("/toDetail.do")
	public String toFaqDetail(Model model, int seq_faq) throws Exception {
		faqDTO dto = service.selectOne(seq_faq);
		model.addAttribute("faqDTO", dto);
		return "/faq/faqDetail";
	}
	
	
	/* 관리자 */
	
	// 자주 묻는 질문 목록 페이지 요청
	@RequestMapping("/toAFaqList.do")
	public String toAFaqList(Model model) throws Exception {
		List<faqDTO> list = service.faqList();
		model.addAttribute("list", list);
		return "/admin/a_faq/a_faqList";
	}
	
	// 자주 묻는 질문 상세 페이지 요청
	@RequestMapping("/toAFaqDetail.do")
	public String toAFaqDetail(Model model, int seq_faq) throws Exception {
		faqDTO dto = service.selectOne(seq_faq);
		model.addAttribute("faqDTO", dto);
		return "/admin/a_faq/a_faqDetail";
	}
	
	// 수정
	@RequestMapping("/modify.do")
	public String modify(faqDTO dto) throws Exception {
		service.modify(dto);
		return "redirect:/faq/toAFaqDetail.do?seq_faq="+dto.getSeq_faq();
	}
	
	// 삭제
	@RequestMapping("/delete.do")
	public String delete(faqDTO dto) throws Exception {
		service.delete(dto);
		return "redirect:/faq/toAFaqList.do?seq_faq="+dto.getSeq_faq();
	}
	
	// 작성 페이지 요청
	@RequestMapping("/toWrite.do")
	public String toFaqWrite() {
		return "/admin/a_faq/faqWrite";
	}
	
	// 등록
	@RequestMapping(value = "/write.do", method = RequestMethod.POST)
	public String insert(faqDTO dto) throws Exception {
		service.insert(dto);
		return "redirect:/faq/toAFaqList.do";
	}
	
}