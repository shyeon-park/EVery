package every.com.board;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;

import every.com.member.MemberDTO;
import every.com.member.MemberService;
import every.com.utils.BoardPagingService;


@Controller
@RequestMapping("/board")
public class BoardController {
	@Autowired
	private BoardService service;
	@Autowired
	private MemberService memService;
	@Autowired
	private HttpSession session;
	@Autowired
	private BoardPagingService pagingService;
	
	@RequestMapping(value="/toBoard.do")
	public String toBoard() throws Exception{
		//List<BoardDTO> list = service.selectAll();
		return "board/boardList";
	}
	
	@RequestMapping(value="/boardlist.do", produces="application/json;charset=UTF-8")
	@ResponseBody()
	public String boardlist(int currentPage) throws Exception{
		//System.out.println("currentPage = " + currentPage);
		HashMap<String, Object> naviMap = pagingService.getPageNavi(currentPage);
		ArrayList<BoardDTO> list = pagingService.getBoardList((int)naviMap.get("currentPage"));
		ArrayList<MemberDTO> columnList = (ArrayList)memService.getApprovalColumnList();
		naviMap.put("columnList", columnList);
		naviMap.put("list", list);
		Gson json = new Gson();
		String result = json.toJson(naviMap).toString();
		//System.out.println(result);
		return result;
	}
	
	@RequestMapping("/toWrite.do")
	public String toWrite() {
		return "board/write";
	}
	
	@RequestMapping("/write.do")
	public String write(MultipartFile[] files, BoardDTO dto) throws Exception{
		//System.out.println(files);
		System.out.println(dto);
		String realPath = session.getServletContext().getRealPath("upload");
		service.insertBoard(dto, files, realPath);
		return "redirect:/board/toBoard.do";
	}
	
	@RequestMapping("/detail.do")
	public String detail(Model model, int seq_column) throws Exception{
		model.addAttribute("seq_column",seq_column);
		return "board/detail";
	} 
	
	@RequestMapping(value = "/toDetail.do",  produces="application/json;charset=UTF-8")
	@ResponseBody
	//produces="application/json;charset=UTF-8"
	public String toDetail(int seq_column) throws Exception{
		BoardDTO dto = service.selectOne(seq_column);
		Gson json = new Gson();
		String result = json.toJson(dto).toString();
		//System.out.println(result);
		return result;
	}
	
	@RequestMapping("/cancle")
	public String cancle() throws Exception{
		String filePath = session.getServletContext().getRealPath("upload");
		System.out.println("캔슬페이지 도착");
		ArrayList<String> list = (ArrayList)session.getAttribute("savedFileName");
		if(list != null) {
			for(String fileName : list) {
				File file = new File(filePath+File.separator+fileName);
				if(file.exists()) {
					System.out.println(filePath+File.separator+fileName);
					file.delete();
					System.out.println("파일이 삭제되었습니다");
				}
		}
    }
		session.removeAttribute("savedFileName"); 
			
		return "redirect:/board/toBoard.do";
	}	
	
	
	@RequestMapping(value = "/modifyProc.do")
	public String modifyProc(int seq_column, Model model) throws Exception{
		BoardDTO dto = service.selectOne(seq_column);
		model.addAttribute("dto",dto);
		return "board/modify";
	}
	
	@RequestMapping("/modify.do")
	public String modify(MultipartFile[] files, BoardDTO dto) throws Exception{
		//System.out.println(files);
		//System.out.println(dto);
		System.out.println(dto.getSeq_column());
		String realPath = session.getServletContext().getRealPath("upload");
		service.updateBoard(dto, files, realPath);
		return "redirect:/board/toBoard.do";
	}
	
	@RequestMapping("/delete.do")
	public String delete(int seq_column) throws Exception{
		String fileRoot = session.getServletContext().getRealPath("upload");//파일이 저장될 경로
		service.deleteBoard(seq_column, fileRoot);
		return "redirect:/board/toBoard.do";
	}
	
	@RequestMapping("/toManager.do")
	public String toManager() throws Exception{
		return "/board/colum";
	}
	
	@RequestMapping(value = "/mainList.do",produces="application/json;charset=UTF-8" )
	@ResponseBody
	public String mainList() throws Exception{
	        ArrayList mainList = (ArrayList)service.getMainList();
	        HashMap<String, Object> map = new HashMap<>();   
	        map.put("mainList", mainList);
	        Gson json = new Gson();
		return (json.toJson(map)).toString();
	}
	
	@RequestMapping("/searchProc.do")
	public String searchProc(String checkOption, String keyword, Model model) throws Exception{
		System.out.println(checkOption + " : " + keyword );
		model.addAttribute("checkOption",checkOption);
		model.addAttribute("keyword",keyword);
		return "/board/searchBoardList";
	}
	
	
	@RequestMapping(value = "/search.do",produces="application/json;charset=UTF-8" )
	@ResponseBody
	public String search(int currentPage, String checkOption, String keyword) throws Exception{
		System.out.println(checkOption + " : " + keyword );
		HashMap<String, Object> naviMap = pagingService.getSearchPageNavi(currentPage, checkOption, keyword);
		ArrayList<MemberDTO> columnList = (ArrayList)memService.getApprovalColumnList();
		ArrayList<BoardDTO> list = pagingService.getSearchBoardList((int)naviMap.get("currentPage"), checkOption, keyword);
		naviMap.put("columnList", columnList);
		naviMap.put("list", list);
		Gson json = new Gson();
		String result = (json.toJson(naviMap)).toString();
		return result;	
	}
	
	
	@RequestMapping(value = "/deleteManager.do",produces="text/html;charset=UTF-8")
	@ResponseBody
	public String deleteManager(@RequestParam("delList[]") Integer[] delList) throws Exception{
		String fileRoot = session.getServletContext().getRealPath("upload");//파일이 저장될 경로
		int rs = service.deleteBoardManager(delList, fileRoot);
		return "success";
	}
}
