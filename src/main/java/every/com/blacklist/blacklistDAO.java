package every.com.blacklist;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import every.com.member.MemberDTO;

@Repository
public class blacklistDAO {
	@Autowired
	private SqlSession session;
	
	// 블랙리스트 조회
	public List<blacklistDTO> blacklist() throws Exception {
		return session.selectList("blacklistMapper.blacklist");
	}
	
	// 회원 전체 조회(블랙리스트 추가용)
	public List<MemberDTO> memberList() throws Exception {
		return session.selectList("blacklistMapper.memberList");
	}
	
	// 블랙리스트 등록
	public int insert(blacklistDTO dto) throws Exception {
		return session.insert("blacklistMapper.insert", dto);
	}
	
	// 블랙리스트 삭제
	public int delete(String[] blacklist) throws Exception {
		Map<String, Object> map = new HashMap<>();
		map.put("blacklist", blacklist);
		return session.delete("blacklistMapper.delete", map);
	}
		

}
