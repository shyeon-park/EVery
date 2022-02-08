package every.com.member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {

	@Autowired
	private SqlSession session;
	
	// 중복확인(id, nickname, phone)
	public int checkMember(MemberDTO dto) throws Exception {
		return session.selectOne("memberMapper.checkMember", dto);
	}
	
//	// 중복확인(id, nickname, phone)
//	public MemberDTO checkMember(MemberDTO dto) throws Exception {
//		return session.selectOne("memberMapper.checkMember", dto);
//	}
	
	// 회원가입
	public int insertMem(MemberDTO dto) throws Exception {
		return session.insert("memberMapper.insertMem", dto);
	}
	
	// 일반 로그인
	public MemberDTO isLoginOk(MemberDTO dto) throws Exception {
		return session.selectOne("memberMapper.isLoginOk", dto);
	}
	
	// 핸드폰 또는 네이버 고유값으로 해당 사용자 정보 불러오기
	public MemberDTO getMember(MemberDTO dto) throws Exception {
		return session.selectOne("memberMapper.getMember", dto);
	}
	
	// 네이버 로그인 시 이미 가입되어 있는 사용자라면 naver_num에 네이버 고유id값 셋팅
	public int setNaverId(MemberDTO dto) throws Exception {
		return session.update("memberMapper.setNaverId", dto);
	}
	
	// 회원 존재 여부
	public int getExistMember(MemberDTO dto) throws Exception {
		return session.selectOne("memberMapper.getExistMember", dto);
	}
	
	// 아이디 찾기
	public MemberDTO getMemberId(String phone) throws Exception {
		return session.selectOne("memberMapper.getMemberId", phone);
	}
	
	// 비밀번호 변경
	public int modifyPw(MemberDTO dto) throws Exception {
		return session.update("memberMapper.modifyPw", dto);
	}
	
}
