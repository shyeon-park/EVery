package every.com.qna;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

@Controller
@RequestMapping("/qna")
public class qnaController {
	@Autowired
	private qnaService service;

	/* 회원 */

	// 내 문의 조회
	@RequestMapping(value = "/toMyList.do", produces="application/json;charset=UTF-8")
	@ResponseBody
	public String toMylist() throws Exception {
		List<qnaDTO> list = service.list();
		Gson gson = new Gson();
		HashMap<String, Object> map = new HashMap<>();
		map.put("list", list);
		String toStr = gson.toJson(map);
		return toStr;

	}

	// 문의 상세 페이지 요청
	@RequestMapping("/toDetail.do")
	public String toQnaDetail(Model model, int seq_qna) throws Exception {
		qnaDTO dto = service.selectOne(seq_qna);
		model.addAttribute("qnaDTO", dto);
		return "/qna/qnaDetail";
	}

	// 문의 작성 페이지 요청
	@RequestMapping("/toWrite.do")
	public String toQnaWrite() throws Exception {
		return "/qna/qnaWrite";
	}

	// 문의 등록
	@RequestMapping("/writeQuestion.do")
	public String insertQuestion(qnaDTO dto) throws Exception {
		int rs = service.insertQuestion(dto);
		return "/clientSupport/clientSupport";
	
	}

	// 삭제
	@RequestMapping("/delete.do")
	public void delete(int seq_qna) throws Exception {
		service.delete(seq_qna);
	}

	
	/* 관리자 */

	// 전체 문의 조회
	@RequestMapping("/toAQnaList.do")
	public String toQnalist(Model model) throws Exception {
		List<qnaDTO> list = service.list();
		model.addAttribute("list", list);
		return "/admin/a_qna/a_qnaList";
	}

	// 문의 상세 페이지 요청
	@RequestMapping("/toAQnaDetail.do")
	public String toAQnaDetail(Model model, int seq_qna) throws Exception {
		qnaDTO dto = service.selectOne(seq_qna);
		model.addAttribute("qnaDTO", dto);
		return "/admin/a_qna/a_qnaDetail";
	}
	
	// 답변 등록
	@RequestMapping("/writeAnswer.do")
	public String insertAnswer(qnaDTO dto) throws Exception {
		service.insertAnswer(dto);
		return "redirect:/qna/toAQnaList.do";
	}

}
