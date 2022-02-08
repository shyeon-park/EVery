package every.com.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminService {

	@Autowired
	private AdminDAO dao;
	
	// 관리자 로그인 요청
	public boolean isAdminLoginOk(AdminDTO dto) throws Exception {
		if(dao.isAdminLoginOk(dto) == 1) {
			return true;
		} else {
			return false;
		}
	}
}
