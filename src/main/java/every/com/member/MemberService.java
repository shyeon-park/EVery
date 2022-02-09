package every.com.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class MemberService {

	@Autowired
	private MemberDAO dao;
	
	// 중복확인(id, nickname, phone)
	public boolean checkMember(MemberDTO dto) throws Exception {
		if(dao.checkMember(dto) == 1) {
			return false;
		} else {
			return true;
		}
	}
	
//	// 중복확인(id, nickname, phone)
//	public MemberDTO checkMember(MemberDTO dto) throws Exception {
//		return dao.checkMember(dto);
//	}
	
	// 회원가입
	public int insertMem(MemberDTO dto) throws Exception {
		return dao.insertMem(dto);
	}
	
	// 일반 로그인
	public MemberDTO isLoginOk(MemberDTO dto) throws Exception {
		return dao.isLoginOk(dto);
	}
	
	// 핸드폰 또는 네이버고유값으로 해당 사용자 정보 불러오기
	public MemberDTO getMember(MemberDTO dto) throws Exception {
		return dao.getMember(dto);
	}
	
	// 네이버 로그인 시 이미 가입되어 있는 사용자라면 naver_num에 네이버 고유id값 셋팅
	public int setNaverId(MemberDTO dto) throws Exception {
		return dao.setNaverId(dto);
	}
	
	// 회원 존재 여부
	public int getExistMember(MemberDTO dto) throws Exception {
		return dao.getExistMember(dto);
	}
	
	// 아이디 찾기
	public MemberDTO getMemberId(String phone) throws Exception {
		return dao.getMemberId(phone);
	}
	
	// 비밀번호 변경
	public int modifyPw(MemberDTO dto) throws Exception {
		return dao.modifyPw(dto);
	}
	
	//컬럼리스트 목록 가져오기
	public List<MemberDTO> appCompleteList() throws Exception{
		return dao.appCompleteList();
	}
	
	//컬럼리스트 신청
	public int columnApplication(String id) throws Exception {
		return dao.columnApplication(id);
	} 
	
	//컬럼리스트 신청 목록
	public List<MemberDTO> columnList() throws Exception{
		return dao.columnList();
	} 
	
	public String getNickname(String id) throws Exception{
		return dao.getNickname(id);
	}
	
}
