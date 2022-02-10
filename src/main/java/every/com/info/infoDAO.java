package every.com.info;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class infoDAO {
	@Autowired
	private SqlSession session;
	
	// 공지사항 목록 조회
	public List<infoDTO> infoList() throws Exception {
		return session.selectList("infoMapper.infoList");
	}
	
	// 공지사항 상세 조회
	public infoDTO selectOne(int seq_info) throws Exception {
		return session.selectOne("infoMapper.selectOne", seq_info);
	}
	
	// 공지사항 등록
	public int insert(infoDTO dto) throws Exception {
		return session.insert("infoMapper.insert", dto);
	}
	
	// 공지사항 수정
	public int modify(infoDTO dto) throws Exception {
		return session.update("infoMapper.modify", dto);
	}
	
	// 공지사항 삭제
	public int delete(int seq_info) throws Exception {
		return session.delete("infoMapper.delete", seq_info);
	}
	
	// 제목으로 검색
	public List<infoDTO> searchByTitle(String title) throws Exception {
		return session.selectList("infoMapper.searchByTitle", title);
	}

	
}
