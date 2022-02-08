package every.com.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import every.com.member.MemberDTO;

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
	
	//관리자 목록
	public List<AdminDTO> managerList() throws Exception{
		return dao.managerList();
	}
}
