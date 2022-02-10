package every.com.qna;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class qnaService {
	@Autowired
	private qnaDAO dao;
	
	// 문의 전체 조회
	public List<qnaDTO> list() throws Exception {
		return dao.qnaList();
	}

	// 전체 문의글 수
	public int listCount() throws Exception {
		return dao.listCount();
	}
	
	
	public qnaDTO selectOne(int seq_qna) throws Exception {
		return dao.selectOne(seq_qna);
	}
	
	// 등록
	public void insert(qnaDTO dto) throws Exception {
		dao.insertQuestion(dto);
	}

	// 삭제
	public void delete(int seq_qna) throws Exception {
		dao.deleteQna(seq_qna);
	}

}
