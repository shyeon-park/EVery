package every.com.bookmark;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import every.com.bookmark.BookmarkDAO;
import every.com.bookmark.BookmarkDTO;

@Service
public class BookmarkService {
	@Autowired
	private BookmarkDAO dao;
	
	/* 즐겨찾기 되어있는지 아닌지 여부를 알기위한 카운팅 */
	public int bookmarkCount(HashMap<String, Object> map) throws Exception{
		return dao.bookmarkCount(map);
	}
	
	/* 즐겨찾기 삭제 */
	public int delete(HashMap<String, Object> map) throws Exception{
		return dao.delete(map);
	}
	
	/* 즐겨찾기 전체 삭제 */
	public int deleteAll(String id) throws Exception{
		return dao.deleteAll(id);
	}
	
	/* 즐겨찾기 추가 */
	public int insert(HashMap<String, Object> map) throws Exception{
		return dao.insert(map);
	}
	
	/* 즐겨찾기 리스트 가져오기 */
	public List<BookmarkDTO> selectAll(HashMap<String, Object> ranges) throws Exception{
		return dao.selectAll(ranges);
	}
	
	/* 즐겨찾기 선택 */
	public BookmarkDTO selectByStation(String station,String id) throws Exception{
		return dao.selectByStation(station,id);
	}
	
}
