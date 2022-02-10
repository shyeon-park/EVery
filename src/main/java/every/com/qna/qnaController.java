package every.com.qna;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/qna")
public class qnaController {
	@Autowired 
	private qnaService service;
	@Autowired
	private HttpSession session;
	
		
	// 문의 전체 조회
	@RequestMapping("/toQnaList.do")
	public String list(Model model) throws Exception {
		List<qnaDTO> list = service.list();
		model.addAttribute("list", list);
		return "qna/qnaList";
	}
	
	// 문의 상세 페이지 요청
	@RequestMapping("/toDetail.do")
	public String toQnaDetail(Model model, int seq_qna) throws Exception {
		qnaDTO dto = service.selectOne(seq_qna);
		model.addAttribute("dto", dto);
		return "qna/qnaDetail";
	}
	
	// 삭제
	@RequestMapping("/delete.do")
	public void delete(int seq_qna) throws Exception {
		service.delete(seq_qna);
	}
	
	// 문의 작성 페이지 요청
	@RequestMapping("/toWrite.do")
	public String toQnaWrite() throws Exception {
		return "qna/qnaWrite";
	}
	
	// 등록
	@RequestMapping("/write.do")
	public String insert(qnaDTO dto) throws Exception {
		service.insert(dto);
		return "redirect:/qna/toQnaList.do";
	}
		
}
