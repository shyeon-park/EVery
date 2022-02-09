package every.com.bookmark;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import every.com.bookmark.BookmarkDTO;

@Repository
public class BookmarkDAO {
	
	@Autowired
	private SqlSession session;
	
	/* 즐겨찾기 되어있는지 아닌지 여부를 알기위한 카운팅 */
	public int bookmarkCount(HashMap<String, String> map) throws Exception{
		return session.selectOne("bookmarkMapper.bookmarkCount", map);
	}
	
	/* 즐겨찾기 삭제 */
	public int delete(HashMap<String, String> map) throws Exception{
		return session.delete("bookmarkMapper.delete", map);
	}
	
	/* 즐겨찾기 전체 삭제 */
	public int deleteAll(String id) throws Exception{
		return session.delete("bookmarkMapper.deleteAll", id);
	}
	
	/* 즐겨찾기 추가 */
	public int insert(HashMap<String, String> map) throws Exception{
		return session.insert("bookmarkMapper.insert", map);
	}
	
	/* 즐겨찾기 페이징을 하기 위한 전체 카운딩 */
	public int countAll(String id) throws Exception{
		return session.selectOne("bookmarkMapper.countAll", id);
	}
	
	/* 즐겨찾기 리스트 가져오기 */
	public List<BookmarkDTO> selectAll(HashMap<String, Object> ranges) throws Exception{
		return session.selectList("bookmarkMapper.selectAll", ranges);
	}
}
