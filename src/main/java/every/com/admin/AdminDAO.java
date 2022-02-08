package every.com.admin;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import every.com.member.MemberDTO;

@Repository
public class AdminDAO {
	
	@Autowired
	private SqlSession session;
	
	// 관리자 로그인
	public int isAdminLoginOk(AdminDTO dto) throws Exception {
		return session.selectOne("adminMapper.isAdminLoginOk", dto);
	}
	
	//관리자 목록
	public List<AdminDTO> managerList() throws Exception{
		return session.selectList("adminMapper.managerList");
	}
}
