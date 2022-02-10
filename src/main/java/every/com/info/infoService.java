package every.com.info;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class infoService {
	@Autowired
	private infoDAO dao;
	
	// 공지사항 전체 조회
	public List<infoDTO> infoList() throws Exception {
		return dao.infoList();
	}
	
	// 등록
	public void insert(infoDTO dto) throws Exception {
		dao.insert(dto);
	}
	
	// 수정
	public void modify(infoDTO dto) throws Exception {
		dao.modify(dto);
	}
	
	// 삭제
	public void delete(int seq_info) throws Exception {
		dao.delete(seq_info);
	}                                                                                                                  

	// 검색
	public List<infoDTO> search(String search) throws Exception {
		List<infoDTO> list = dao.searchByTitle(search);
		return list;
	}
}
