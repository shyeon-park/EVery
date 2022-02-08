package every.com.board;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
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
		ArrayList<MemberDTO> columnList = (ArrayList)memService.appCompleteList();
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
	@ResponseBody()
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
			for(String fileName : list) {
				File file = new File(filePath+File.separator+fileName);
				if(file.exists()) {
					System.out.println(filePath+File.separator+fileName);
					file.delete();
					System.out.println("파일이 삭제되었습니다");
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
	

}
