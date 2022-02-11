package every.com.faq;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class faqDAO {
	@Autowired
	private SqlSession session;
	
	// 자주 묻는 질문 목록 조회
	public List<faqDTO> faqList() throws Exception {
		return session.selectList("faqMapper.faqList");
	}
	
	// FAQ 상세 조회
	public faqDTO selectOne(int seq_faq) throws Exception {
		return session.selectOne("faqMapper.selectOne", seq_faq);
	}
	
	// FAQ 등록
	public int insert(faqDTO dto) throws Exception {
		return session.insert("faqMapper.insert", dto);
	}
	
	// FAQ 수정
	public int modify(faqDTO dto) throws Exception {
		return session.update("faqMapper.modify", dto);
	}
	
	// FAQ 삭제
	public int delete(int seq_faq) throws Exception {
		return session.delete("faqMapper.delete", seq_faq);
	}
	
	// 제목으로 검색
	public List<faqDTO> searchByTitle(String title) throws Exception {
		return session.selectList("faqMapper.searchByTitle", title);
	}
}

