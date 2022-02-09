package every.com.bookmark;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import every.com.member.MemberDTO;

@Controller
@RequestMapping("/bookmark")
public class BookmarkController {
	
	@Autowired
	private HttpSession session;
	
	@Autowired
	private BookmarkService service;
	
	@Autowired
	private BookmarkPagingService servicePage;
	
	/* 북마크 페이지로 이동 */
	@RequestMapping(value = "/toBookmark.do")
	public String toBookmark() throws Exception{
		return "/bookmark/bookmark";
	}
	
	/* 전체 삭제 */
	@RequestMapping(value = "/deleteAll.do")
	@ResponseBody
	public String deleteAll(String id) throws Exception{
		if(service.deleteAll(id) != -1) {
			return "success";
		}else {
			return "fail"; 
		}
	}
	
	/* 해당 충전소만 삭제 */
	@RequestMapping(value = "/delete.do")
	@ResponseBody
	public String delete(String station) throws Exception{
		String id = (String)((HashMap)session.getAttribute("loginSession")).get("id");
		HashMap<String, String> map = new HashMap<>();
		map.put("station", station);
		map.put("id", id);
		if(service.delete(map) != -1) {
			return "success";
		}else {
			return "fail"; 
		}
	}
	
	/* 즐겨찾기 목록 불러오기 */
	@RequestMapping(value = "/getList.do", produces="application/json;charset=UTF-8")
	@ResponseBody
	public String getList(String id, int currentPage) throws Exception{
		HashMap<String, Object> ranges = servicePage.getRange(currentPage);
		HashMap<String, Object> settingMap = servicePage.getPageNavi(currentPage, id);
		ranges.put("id", id);
		List<BookmarkDTO> bookmarkList = service.selectAll(ranges);
		System.out.println(bookmarkList);
		HashMap<String, Object> allMap = new HashMap<>();
		allMap.put("bookmarkList", bookmarkList);
		allMap.put("settingMap", settingMap);
		Gson gson = new Gson();
		String gsonData = gson.toJson(allMap).toString();
		return gsonData;
	}
	
	/* 처음에 충전소에 들어갔을 때 즐겨찾기 되어있는지 알기위한 부분 */
	@RequestMapping(value = "/getBookmark.do")
	@ResponseBody
	public String isExistBookmark(String station) throws Exception{
		String id = ((MemberDTO)session.getAttribute("loginSession")).getId();
		HashMap<String, String> map = new HashMap<>();
		map.put("station", station);
		map.put("id", id);
		if(service.bookmarkCount(map) > 0) {
			return "ok";
		}else {
			return "no";
		}
	}
	
	/* 추가 해제 부분 */
	@RequestMapping(value = "/setBookmark.do")
	@ResponseBody
	public void setBookmark(String station) throws Exception{
		String id = ((MemberDTO)session.getAttribute("loginSession")).getId();
		HashMap<String, String> map = new HashMap<>();
		map.put("station", station);
		map.put("id", id);
		System.out.println(map);
		if(service.bookmarkCount(map) > 0) {
			service.delete(map);
		}else if(service.bookmarkCount(map) == 0) {
			service.insert(map);
		}
	}
}
