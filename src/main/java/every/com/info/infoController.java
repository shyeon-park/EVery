package every.com.info;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

@Controller
@RequestMapping("/info")
public class infoController {
	@Autowired
	private infoService service;
	
	/* 회원 */
	
	// 공지사항 목록 페이지 요청
	@RequestMapping(value ="/toInfoList.do", produces="application/json;charset=UTF-8")
	@ResponseBody
	public String toInfoList() throws Exception {
		List<infoDTO> list = service.infoList();
		Gson gson = new Gson();
		HashMap<String, Object> map = new HashMap<>();
		map.put("list", list);
		String toStr = gson.toJson(map);
		return toStr;
	}
	
	// 공지사항 상세 페이지 요청
	@RequestMapping("/toDetail.do")
	public String toInfoDetail(Model model, int seq_info) throws Exception {
		infoDTO dto = service.infoDetail(seq_info);
		model.addAttribute("infoDTO", dto);
		return "/info/infoDetail";
	}
	
	
	/* 관리자 */
	// 관리자 공지사항 목록 불러오기 요청
	@RequestMapping("/getInfoList.do")
	@ResponseBody
	public String getInfoList() throws Exception {
		List<infoDTO> list = service.infoList();
		Gson json = new Gson();
		String result = json.toJson(list).toString();
		return result;
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
		return "redirect:/admin/getClientSupport.do?view=info";
		//return "redirect:/info/toAInfoList.do?seq_info="+dto.getSeq_info();
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
		return "redirect:/admin/getClientSupport.do?view=info";
	}
}
