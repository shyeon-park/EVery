package every.com.info;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/info")
public class infoController {
	@Autowired
	private infoService service;
	
	/* 회원 */
	
	// 공지사항 목록 페이지 요청
	@RequestMapping("/toInfoList.do")
	public String toInfoList(Model model) throws Exception {
		List<infoDTO> list = service.infoList();
		model.addAttribute("list", list);
		return "/info/infoList";
	}
	
	// 공지사항 상세 페이지 요청
	@RequestMapping("/toDetail.do")
	public String toInfoDetail(Model model, int seq_info) throws Exception {
		infoDTO dto = service.infoDetail(seq_info);
		model.addAttribute("infoDTO", dto);
		return "/info/infoDetail";
	}
	
	
	/* 관리자 */
	
	// 공지사항 목록 페이지 요청
	@RequestMapping("/toAInfoList.do")
	public String toAInfoList(Model model) throws Exception {
		List<infoDTO> list = service.infoList();
		model.addAttribute("list", list);
		return "/admin/a_info/a_infoList";
	}
	
	// 공지사항 상세 페이지 요청
	@RequestMapping("/toAInfoDetail.do")
	public String toAInfoDetail(Model model, int seq_info) throws Exception {
		infoDTO dto = service.infoDetail(seq_info);
		model.addAttribute("infoDTO", dto);
		return "/admin/a_info/a_infoDetail";
	}
	
	// 수정
	@RequestMapping("/modify.do")
	public String modify(infoDTO dto) throws Exception {
		service.modify(dto);
		return "redirect:/info/toAInfoDetail.do?seq_info="+dto.getSeq_info();
	}
	
	// 삭제
	@RequestMapping("/delete.do")
	public String delete(infoDTO dto) throws Exception {
		service.delete(dto);
		return "redirect:/info/toAInfoList.do?seq_info="+dto.getSeq_info();
	}
	
	// 공지사항 작성 페이지 요청
	@RequestMapping("/toWrite.do")
	public String toInfoWrite() throws Exception {
		return "/admin/a_info/infoWrite";
	}
	
	// 등록
	@RequestMapping("/write.do")
	public String insert(infoDTO dto) throws Exception {
		service.insert(dto);
		return "redirect:/info/toAInfoList.do";
	}
}
