package every.com.member;

import java.util.ArrayList;
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
	
	// 일반 회원가입
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
	
	// 네이버 로그인 시 이미 가입되어 있는 사용자라면 네이버 고유id값 셋팅
	public int setNaverId(MemberDTO dto) throws Exception {
		return dao.setNaverId(dto);
	}
	
	// 카카오 로그인 시 이미 가입되어 있는 사용자라면 카카오 고유id값 셋팅
	public int setKakaoId(MemberDTO dto) throws Exception {
		return dao.setKakaoId(dto);
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
	
	// 회원탈퇴
	public int getMemberWithdrawal(String id) throws Exception {
		return dao.getMemberWithdrawal(id);
	}
		
	// 닉네임 변경
	public int modifyNickname(String beforeNickname, String afterNickname) throws Exception {
		return dao.modifyNickname(beforeNickname, afterNickname);
	}
		
	// 전화번호 변경
	public int modifyPhone(String beforePhone, String afterPhone) throws Exception {
		return dao.modifyPhone(beforePhone, afterPhone);
	}
		
	// 닉네임으로 회원정보 불러오기
	public MemberDTO getMemberByNickOrPhone(MemberDTO dto) throws Exception {
		return dao.getMemberByNickOrPhone(dto);
	}
		
	// 아이디와 비밀번호로 사용자 여부 체크
	public int checkMemberByIdAndPw(String id, String pw) throws Exception {
		return dao.checkMemberByIdAndPw(id, pw);
	}
	
	// 관리자 회원 삭제
	public int deleteMember(String[] userId) throws Exception{
		return dao.deleteMember(userId);
	}
	
	

	
	//컬럼리스트 신청
	public int columnApplication(String id) throws Exception {
		return dao.columnApplication(id);
	} 
	
	//컬럼리스트 신청 목록
	public List<MemberDTO> columnList() throws Exception{
		return dao.columnList();
	} 
	
	//닉네임 가져오기
	public String getNickname(String id) throws Exception{
		return dao.getNickname(id);
	}

	//dto 가져오기 
	public MemberDTO getMemberDTO (String id) {
		return dao.getMemberDTO(id);
	}
	
	//칼럼리스트 취소신청시
	public int cancelColumnList(String id) {
		return dao.cancelColumnList(id);
	}
	
	//컬럼리스트 가져오기 getApprovalColumnList
	public List<MemberDTO> getApprovalColumnList() throws Exception{
		return dao.getApprovalColumnList();
	}
	
	//승인작업완료
	public int approval(ArrayList<String> list) throws Exception{
		return dao.approval(list);
	}
	
	//거절작업완료
	public int reject(ArrayList<String> list) throws Exception{
		return dao.reject(list);
	}
	//권한해제 작업완료
	public int releaseOfAuthority(ArrayList<String> list) throws Exception{
		return dao.releaseOfAuthority(list);
	}
}
