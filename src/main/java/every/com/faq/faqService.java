package every.com.faq;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class faqService {
	@Autowired
	private faqDAO dao;
	
	// 전체 조회
	public List<faqDTO> faqList() throws Exception {
		return dao.faqList();
	}
	
	// 상세 조회
	public faqDTO selectOne(int seq_faq) throws Exception {
		return dao.selectOne(seq_faq);
	}
	
	// 등록
	public void insert(faqDTO dto) throws Exception {
		dao.insert(dto);
	}
	
	// 수정
	public void modify(faqDTO dto) throws Exception {
		dao.modify(dto);
	}

	// 삭제
	public void delete(faqDTO dto) throws Exception {
		dao.delete(dto);
	}
}
