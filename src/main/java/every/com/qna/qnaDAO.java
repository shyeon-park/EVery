package every.com.qna;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class qnaDAO {
	@Autowired
	private SqlSession session;
	
	// 문의 전체 목록 조회(관리자)
	public List<qnaDTO> qnaList() throws Exception {
		return session.selectList("qnaMapper.qnaList");
	}
	
	// 전체 문의글 수
	public int listCount() throws Exception {
		return session.selectOne("qnaMapper.listCount");
	}
	
	// 내 문의 목록 조회(회원)
	public List<qnaDTO> selectById(String id) throws Exception {
		return session.selectList("qnaMapper.selectById", id);
	}
	
	// 문의 상세 조회
	public qnaDTO selectOne(int seq_qna) throws Exception {
		return session.selectOne("qnaMapper.selectOne", seq_qna);
	}
	
	// 문의 등록
	public int insertQuestion(qnaDTO dto) throws Exception {
		return session.insert("qnaMapper.insertQuestion", dto);
	}
	
	// 답변 등록
	public int insertAnswer(String answer) throws Exception {
		return session.update("qnaMapper.insertAnswer", answer);
	}
	
	// 문의 삭제
	public int deleteQna(int seq_qna) throws Exception {
		return session.delete("qnaMapper.delete", seq_qna);
	}
}