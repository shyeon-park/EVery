package every.com.blacklist;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import every.com.member.MemberDTO;

@Service
public class blacklistService {
	@Autowired
	private blacklistDAO dao;
	
	// 블랙리스트 조회
	public List<blacklistDTO> blacklist() throws Exception {
		return dao.blacklist();
	}
	
	// 회원 조회(블랙리스트 추가)
	public List<MemberDTO> memberList() throws Exception {
		return dao.memberList();
	}
		
	// 등록
	public void insert(blacklistDTO dto) throws Exception {
		dao.insert(dto);
	}
	
	// 수정
	public void modify(String reason) throws Exception {
		dao.modifyReason(reason);
	}
	
	// 삭제
	public void delete(String id) throws Exception {
		dao.delete(id);
	}
	
	// 검색
	public List<blacklistDTO> search(String id) throws Exception {
		List<blacklistDTO> list = dao.searchById(id);
		return list;
	}

	

}
