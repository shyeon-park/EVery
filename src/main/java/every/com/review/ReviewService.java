package every.com.review;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import every.com.review.ReviewDAO;
import every.com.review.ReviewDTO;

@Service
public class ReviewService {
	@Autowired
	private ReviewDAO dao;
	
	/* 댓글 등록 */
	public int insert(ReviewDTO dto) throws Exception{
		return dao.insert(dto);
	}
	
	/* 관리자 페이지 (검색했을 때 그 결과만 가져옴) */
	public List<ReviewDTO> searchByKey(HashMap<String, Object> ranges) throws Exception{
		return dao.searchByKey(ranges);
	}
	
	/* 관리자 페이지 전체 댓글 불러오기 */
	public List<ReviewDTO> getAdListAll(HashMap<String, Object> ranges) throws Exception{
		return dao.getAdListAll(ranges);
	}
	
	/* 전체 댓글 불러오기 */
	public List<ReviewDTO> selectAll(HashMap<String, Object> ranges) throws Exception{
		return dao.selectAll(ranges);
	}
	
	/* 댓글 삭제 */
	public int delete(int seq_review) throws Exception{
		return dao.delete(seq_review);
	}
	
	/* 댓글 수정 */
	public int update(int seq_review, String review) throws Exception{
		return dao.update(seq_review, review);
	}
}
