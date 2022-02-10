package every.com.utils;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import every.com.board.BoardDAO;
import every.com.board.BoardDTO;
import every.com.message.MessageDAO;


@Service
public class BoardPagingService {
@Autowired
private BoardDAO dao;


	
	//하나의 데이터 페이지에 보여질 데이터 수 
	private int recordCntPerPage = 9;
	//네비게이션 범위를 얼마로 잡아줄지
	private int naviCntPerPage = 5;
	
	public HashMap<String, Object> getPageNavi(int currentPage) throws Exception{
		int recordTotalCnt=dao.countAll();
		
		int pageTotalCnt = 0; // 총 몇개의 페이지가 나올지
		if(recordTotalCnt % recordCntPerPage >0) {
			pageTotalCnt = (recordTotalCnt / recordCntPerPage)+1;
		}else {
			pageTotalCnt = recordTotalCnt / recordCntPerPage;
		}
		if(currentPage < 1) { //currentPage 안전장치 
			currentPage = 1;
		}else if(currentPage > pageTotalCnt) {
			currentPage = pageTotalCnt;
		}
		int startNavi = ((currentPage -1) / naviCntPerPage) * naviCntPerPage+1;
		int endNavi = startNavi + naviCntPerPage -1;
		if(endNavi > pageTotalCnt) { //endNavi 중 페이지 수를 초과되지 않게 맞춰주기
			endNavi = pageTotalCnt;
		}
		boolean needPrev = true;
		boolean needNext = true;
		if(startNavi == 1) needPrev = false;
		if(endNavi ==  pageTotalCnt) needNext = false;
		System.out.println("startNavi : " +startNavi+ " endNavi : " +endNavi+"  needPrev :"+needPrev +" needNext : "+ needNext +" currentPage : " +currentPage);
		HashMap<String,Object> map = new HashMap<>();
		map.put("startNavi", startNavi);
		map.put("endNavi", endNavi);
		map.put("needPrev", needPrev);
		map.put("needNext", needNext);
		map.put("currentPage", currentPage);
		return map;
	}
	
	public HashMap<String, Object> getSearchPageNavi(int currentPage, String checkOption, String keyword ) throws Exception{
		int recordTotalCnt=dao.searchCountAll(checkOption, keyword);
		
		int pageTotalCnt = 0; // 총 몇개의 페이지가 나올지
		if(recordTotalCnt % recordCntPerPage >0) {
			pageTotalCnt = (recordTotalCnt / recordCntPerPage)+1;
		}else {
			pageTotalCnt = recordTotalCnt / recordCntPerPage;
		}
		if(currentPage < 1) { //currentPage 안전장치 
			currentPage = 1;
		}else if(currentPage > pageTotalCnt) {
			currentPage = pageTotalCnt;
		}
		int startNavi = ((currentPage -1) / naviCntPerPage) * naviCntPerPage+1;
		int endNavi = startNavi + naviCntPerPage -1;
		if(endNavi > pageTotalCnt) { //endNavi 중 페이지 수를 초과되지 않게 맞춰주기
			endNavi = pageTotalCnt;
		}
		boolean needPrev = true;
		boolean needNext = true;
		if(startNavi == 1) needPrev = false;
		if(endNavi ==  pageTotalCnt) needNext = false;
		System.out.println("startNavi : " +startNavi+ " endNavi : " +endNavi+"  needPrev :"+needPrev +" needNext : "+ needNext +" currentPage : " +currentPage);
		HashMap<String,Object> map = new HashMap<>();
		map.put("startNavi", startNavi);
		map.put("endNavi", endNavi);
		map.put("needPrev", needPrev);
		map.put("needNext", needNext);
		map.put("currentPage", currentPage);
		return map;
	}
	
	public ArrayList<BoardDTO> getBoardList(int currentPage) throws Exception{
		
		int startRange = currentPage * recordCntPerPage - (recordCntPerPage-1);
		int endRange = currentPage * recordCntPerPage;
		
		ArrayList<BoardDTO> list = (ArrayList)dao.getBoardList(startRange, endRange);
		for(BoardDTO dto : list) {
			System.out.println(dto.getSeq_column() +" : " + dto.getTitle());
		}
		return list;
	}
	
	public ArrayList<BoardDTO> getSearchBoardList(int currentPage,String checkOption, String keyword) throws Exception{
		
		int startRange = currentPage * recordCntPerPage - (recordCntPerPage-1);
		int endRange = currentPage * recordCntPerPage;
		
		ArrayList<BoardDTO> list = (ArrayList)dao.getSearchBoardList(checkOption,keyword,startRange, endRange);
		for(BoardDTO dto : list) {
			System.out.println(dto.getSeq_column() +" : " + dto.getTitle());
		}
		return list;
	}
	
}
