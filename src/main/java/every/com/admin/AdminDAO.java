package every.com.admin;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDAO {
	
	@Autowired
	private SqlSession session;
	
	// 관리자 로그인
	public int isAdminLoginOk(AdminDTO dto) throws Exception {
		return session.selectOne("adminMapper.isAdminLoginOk", dto);
	}
}
