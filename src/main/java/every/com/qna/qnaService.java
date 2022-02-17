package every.com.qna;

import java.util.List;

import javax.websocket.Session;

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
	
//	// 내 문의 조회
//	public List<qnaDTO> myList() throws Exception {
//	}
	
	// 상세 조회
	public qnaDTO selectOne(int seq_qna) throws Exception {
		return dao.selectOne(seq_qna);
	}
	
	// 문의 등록
	public int insertQuestion(qnaDTO dto) throws Exception {
		return dao.insertQuestion(dto);
	}

	// 삭제
	public void delete(int seq_qna) throws Exception {
		dao.delete(seq_qna);
	}

	// 답변 등록
	public void insertAnswer(qnaDTO dto) throws Exception {
		dao.insertAnswer(dto);
	}
}
