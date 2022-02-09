package every.com.review;

import java.text.SimpleDateFormat;
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
@RequestMapping("/review")
public class ReviewController {
	@Autowired
	private HttpSession session;
	
	@Autowired
	private ReviewService service;
	
	@Autowired
	private PagingService servicePage;
	
	@Autowired
	private AdPagingService adServicePage;
	
	@Autowired
	private SearchPagingService SearchServicePage;
	
	/* 검색하여 관리자 댓글리스트 불러오기 */
	@RequestMapping(value = "/searchByKey.do", produces="application/json;charset=UTF-8")
	@ResponseBody
	public String searchByKey(int currentPage, String searchKey, String selected) throws Exception{
		HashMap<String, Object> ranges = SearchServicePage.getRange(currentPage);
		HashMap<String, Object> settingMap = SearchServicePage.getPageNavi(currentPage, searchKey, selected);
		ranges.put("searchKey", searchKey);
		ranges.put("selected", selected);
		List<ReviewDTO> byIdList = service.searchByKey(ranges);
		HashMap<String, Object> byIdMap = new HashMap<>();
		byIdMap.put("byIdList", byIdList);
		byIdMap.put("settingMap", settingMap);
		Gson gson = new Gson();
		String gData = gson.toJson(byIdMap).toString();
		return gData;
	}
	
	/* 관리자 페이지 댓글 불러오기 */
	@RequestMapping(value = "/getAdReview.do", produces="application/json;charset=UTF-8")
	@ResponseBody
	public String getAdReview(int currentPage) throws Exception{
		HashMap<String, Object> ranges = adServicePage.getRange(currentPage);
		HashMap<String, Object> settingMap = adServicePage.getPageNavi(currentPage);
		List<ReviewDTO> adList = service.getAdListAll(ranges);
		HashMap<String, Object> adMap = new HashMap<>();
		adMap.put("adList", adList);
		adMap.put("settingMap", settingMap);
		Gson gson = new Gson();
		String gData = gson.toJson(adMap).toString();
		return gData;
	}
	
	/* 댓글 등록 */
	@RequestMapping(value = "/insert.do")
	@ResponseBody
	public String insert(ReviewDTO dto) throws Exception{
		System.out.println("충전소 이름 : " + dto.getStation());
		System.out.println("댓글 내용 : " + dto.getReview());
		String id = ((MemberDTO)session.getAttribute("loginSession")).getId();
		String nickname = ((MemberDTO)session.getAttribute("loginSession")).getNickname();
		System.out.println(id + nickname);
		dto.setId(id);
		dto.setNickname(nickname);
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm");
		dto.setWritten_date(sdf.format(System.currentTimeMillis()));
		
		System.out.println(dto.getWritten_date());
		if(service.insert(dto) != -1) {
			return "success";
		}else {
			return "fail";
		}
		
	}
	
	/* 댓글 불러오기 */
	@RequestMapping(value = "/getReview.do", produces="application/json;charset=UTF-8")
	@ResponseBody
	public String getReview(String station, int currentPage) throws Exception{
		// 처음 로드될 때에는 currentPage가 script의 getCommentList("1")로 1의 값이 넘어오게 된다.
		// 그 다음 부터는 해당 네비 번호를 누르면 그 currentPage가 넘어오게 된다.
		System.out.println(currentPage + station);
		HashMap<String, Object> ranges = servicePage.getRange(currentPage);
		HashMap<String, Object> settingMap = servicePage.getPageNavi(currentPage, station);
		ranges.put("station", station);
		List<ReviewDTO> reviewList = service.selectAll(ranges);
		System.out.println(reviewList);
		HashMap<String, Object> allMap = new HashMap<>();
		allMap.put("reviewList", reviewList);
		allMap.put("settingMap", settingMap);
		Gson gson = new Gson();
		String gsonData = gson.toJson(allMap).toString();
		return gsonData;
	}
	
	/* 댓글 삭제 */
	@RequestMapping(value = "/delete.do")
	@ResponseBody
	public String delete(int seq_review) throws Exception{
		System.out.println(seq_review);
		if(service.delete(seq_review) != -1) {
			return "success";
		}else {
			return "fail";
		}
	}
	
	/* 댓글 수정 */
	@RequestMapping(value = "/update.do")
	@ResponseBody
	public String update(int seq_review, String review) throws Exception{
		System.out.println("댓글 번호 : " + seq_review + "수정 내용 : " + review);
		if(service.update(seq_review, review) != -1) {
			return "success";
		}else {
			return "fail";
		}
	}
}
