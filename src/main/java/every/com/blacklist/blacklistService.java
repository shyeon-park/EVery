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
	public int insert(blacklistDTO dto) throws Exception {
		return dao.insert(dto);
	}
	
	// 삭제
	public int delete(String[] blacklist) throws Exception {
		return dao.delete(blacklist);
	}
	
}

