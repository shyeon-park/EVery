package every.com.member;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;

import every.com.utils.CoolSmsService;
import every.com.utils.EncrytionUtils;

@Controller
@RequestMapping("/member")
public class MemberController {

	@Autowired
	private MemberService service;
	@Autowired
	private CoolSmsService smsService;
	@Autowired
	private HttpSession session;
	
	// 네이버 팝업페이지 요청
	@RequestMapping("/getNaverPopup.do")
	public String getNaverPopup() throws Exception {
		return "naver/naverPopup";
	}
	
	// sns와 연동 요청
	@RequestMapping("/getLinkWithSns.do")
	@ResponseBody
	public String getLinkWithSns(String naver_num, String phone, String kakao_num) throws Exception {
		System.out.println(kakao_num);
		MemberDTO dto = new MemberDTO();
		dto.setPhone(phone);
		dto = service.getMember(dto);
		System.out.println(dto);
		
		if(naver_num != null) {		// 네이버 연동 요청			
			// 네이버 고유값이 없을 경우, 다른 네이버 아이디와 연동이 안된 경우라면
			if(dto.getNaver_num() == null || dto.getNaver_num().equals("0")) {
				dto.setNaver_num(naver_num);
				service.setNaverId(dto);
				this.session.setAttribute("loginSession", dto);
				return "linkWithNaverOk";
			} else { // 이미 가입되어 있는 핸드폰 번호인데 다른 네이버 고유값이 이미 존재한다면, 이미 다른 네이버 아이디와 연동이 된 경우라면, 핸드폰 정보가 불일치 하다면
				return "linkWithNaverFail";
			}
		} else {					// 카카오 연동 요청
			// 카카오 고유값이 없을 경우, 다른 카카오 아이디와 연동이 안된 경우라면
			if(dto.getKakao_num() == null || dto.getKakao_num().equals("0")) {
				dto.setKakao_num(kakao_num);
				service.setKakaoId(dto);
				this.session.setAttribute("loginSession", dto);
				return "linkWithKakaoOk";
			} else { // 이미 가입되어 있는 핸드폰 번호인데 다른 네이버 고유값이 이미 존재한다면, 이미 다른 네이버 아이디와 연동이 된 경우라면, 핸드폰 정보가 불일치 하다면
				return "linkWithKakaoFail";
			}
		}
		
	}
	
	// sns 로그인 요청
		@RequestMapping("/snsLogin.do")
		@ResponseBody
		public String snsLogin(MemberDTO dto) throws Exception {
			System.out.println(dto);
			
			if(dto.getKakao_num() != null) { // 카카오 로그인
				// 카카오 가입이 되어있는지 확인
				if(service.checkMember(dto)) { // 해당 카카오 아이디를 가진 회원이 없는 경우 핸드폰 인증 요청
					return "kakaoAuthPhone";
				} else { // 해당 카카오 아이디를 가진 회원이 존재
					MemberDTO memberDto = service.getMember(dto);
					this.session.setAttribute("loginSession", memberDto);
					return "kakaoLoginOk";
				}
			} else { // 네이버 로그인
				MemberDTO mDto = new MemberDTO();
				mDto.setNaver_num(dto.getNaver_num());
				
				// 네이버 가입이 되어있는지 확인
				if(!service.checkMember(mDto)) { // 네이버 고유번호가 존재할 시 (dto에 네이버 고유값만 셋팅하여 비교)
					MemberDTO memberDto = service.getMember(mDto);
					this.session.setAttribute("loginSession", memberDto);
					return "naverLoginOk";
				} else { // 네이버 고유번호가 존재하지 않을 시
					// dto에 휴대폰 번호만 셋팅되어야 비교할 수 있기 때문에 이전에 셋팅한 네이버 고유값을 null값으로 셋팅
					mDto.setNaver_num(null);
					// 네이버에서 넘어온 핸드폰 값을 가지고 이미 가입되어 있는 핸드폰인지 검사
					mDto.setPhone(dto.getPhone());
					
					if(!service.checkMember(mDto)) { // 이미 가입되어 있는 핸드폰번호라면 연동여부 요청
						return "linkWithNaver";
					} else { // 회원가입이 처음인 경우
						return "naverSignup";
					}
				}
			}
		}

	// 중복확인 요청(아이디, 닉네임)
	@RequestMapping("/checkMember.do")
	@ResponseBody
	public String checkMember(MemberDTO dto) throws Exception {
		System.out.println(dto);

		if (service.checkMember(dto)) {
			return "avaliable";
		} else {
			return "unavaliable";
		}
	}

	// 인증번호 발송 요청
	@RequestMapping("/sendSms.do")
	@ResponseBody
	public String sendSms(MemberDTO dto) throws Exception {

		// 휴대폰 중복확인
		if (!service.checkMember(dto)) { // 해당 휴대폰 번호가 이미 존재하면
			return "unavaliable";
		} else { // // 해당 휴대폰 번호가 이미 존재하지 않으면
			// 6자리 인증번호 생성
			int authNum = (int) (Math.random() * (999999 - 100000 + 1)) + 100000;
			System.out.println(authNum);

			String phone = dto.getPhone();

			// 세션에 핸드폰 번호와 인증번호를 담고 time-out 2분으로 설정
			session.setAttribute(phone, authNum);
			session.setMaxInactiveInterval(2 * 60);
			System.out.println(session.getMaxInactiveInterval());
			System.out.println(session.getAttribute(phone));

			// 인증번호 전송
			//smsService.certifiedPhoneNum(phone, authNum);
			return "success";
		}
	}

	// 인증번호 확인 요청
	@RequestMapping("/authCheck.do")
	@ResponseBody
	public String authCheck(int authNum, String phone) throws Exception {
		System.out.println("phone: " + phone);
		System.out.println("authNum: " + authNum);
		System.out.println("session_value: " + session.getAttribute(phone));

		// 넘어온 인증번호값과 세션의 인증번호 값 비교
		if (session.getAttribute(phone) == null) { // 세션값이 null이면 시간초과로 세션이 사라진상태
			return "timeout";
		} else if ((int) session.getAttribute(phone) == authNum) { // 일치하면 세션값 초기화하고 인증 성공 
			session.removeAttribute(phone);
			return "success";
		} else { // 인증번호가 일치하지 않아 인증 실패
			return "fail";
		}
	}

	// 인증번호 세션 비우기
	@RequestMapping("/invalidateSession.do")
	@ResponseBody
	public void invalidateSession() throws Exception {
		session.invalidate();
	}

	// 회원가입 요청
	@RequestMapping("/signup.do")
	@ResponseBody
	public String signup(MemberDTO dto) throws Exception {
		// id, pw, nickname, phone, sns_num(sns 고유번호/디폴트 0/sns 가입자는 sns 고유번호 등록),
		// identification_num(디폴트 0/ 0이면 일반 사용자/ 1이면 컬럼니스트), sysdate,
		// application_num(컬럼니스트 신청여부/0이면 신청x/1이면 신청o)
		System.out.println(dto);

		if(dto.getPw() != "") {   // 카카오, 일반 회원가입
			// 비밀번호 암호화
			String pw = EncrytionUtils.getSHA512(dto.getPw());
			System.out.println(pw);
			dto.setPw(pw);
		} 

		int rs = service.insertMem(dto);
		if (rs == 1) {
			return "success";
		} else {
			return "fail";
		}
	}

	// 일반 로그인 요청
	@RequestMapping("/login.do")
	@ResponseBody
	public String login(MemberDTO dto) throws Exception {
		System.out.println(dto);

		String pw = EncrytionUtils.getSHA512(dto.getPw());
		dto.setPw(pw);

		MemberDTO mdto = service.isLoginOk(dto);
		if (mdto != null) {
			session.setAttribute("loginSession", mdto);
			return "loginSuccess";
		} else {
			return "loginFail";
		}

	}

	// 로그아웃 요청
	@RequestMapping("/logout.do")
	public String logout() throws Exception {
		session.removeAttribute("loginSession");
		System.out.println(session.getAttribute("loginSession"));
		return "redirect: /";
	}
	
	// 아이디 찾기/비밀번호 찾기 인증번호 요청
	@RequestMapping("/getRequestAuthNum.do")
	@ResponseBody
	public String getRequestAuthNum(MemberDTO dto) throws Exception {
		System.out.println(dto);
		
		int authNum = (int) (Math.random() * (999999 - 100000 + 1)) + 100000;
		System.out.println(authNum);

		String phone = dto.getPhone();
		
		// 세션에 핸드폰 번호와 인증번호를 담고 time-out 2분으로 설정
		session.setAttribute(phone, authNum);
		session.setMaxInactiveInterval(2 * 60);
		System.out.println(session.getMaxInactiveInterval());
		System.out.println(session.getAttribute(phone));

		// 인증번호 전송
		//smsService.certifiedPhoneNum(phone, authNum);
		return "success";
	}
	
	// 아이디/비밀번호 찾기 회원 존재여부 요청
	@RequestMapping("/getExistMember.do")
	@ResponseBody
	public String getExistMember(MemberDTO dto) throws Exception {
		System.out.println(dto);
		if(service.getExistMember(dto) == 0) { // 해당 정보를 가진 회원이 존재하지 않으면  
			 return "doesntExistMem";
		} else {                               // 해당 정보를 가진 회원이 존재하면
			return "existMem";
		}
	}
	
	// 아이디 찾기
	@RequestMapping("/getMemberId.do")
	@ResponseBody
	public String getMemberId(String phone) throws Exception {
		MemberDTO dto = service.getMemberId(phone);
		String id = dto.getId();
		return id;
	}
	
	// 비밀번호 변경
	@RequestMapping("/modifyPw.do")
	@ResponseBody
	public String modifyPw(MemberDTO dto) throws Exception {
		System.out.println(dto);

		// 비밀번호 암호화
		String pw = EncrytionUtils.getSHA512(dto.getPw());
		System.out.println(pw);
		dto.setPw(pw);
		
		if(service.modifyPw(dto) == 1) { // 변경성공 시
			return "success";
		} else {
			return "fail";
		}
	}
	
	// 마이페이지 요청
	@RequestMapping("/getMypage.do")
	public String getMypage() throws Exception {
		return "user/mypage";
	}
		
	// 회원탈퇴 요청
	@RequestMapping("/getMemberWithdrawal.do")
	@ResponseBody
	public String getMemberWithdrawal(String id) throws Exception{
		System.out.println(id);
		
		if(service.getMemberWithdrawal(id) == 1) {
			this.session.removeAttribute("loginSession");
			return "deleteMem";
		} else {
			return "fail";
		}
	}
		
	// 닉네임 변경
	@RequestMapping("/modifyNickname.do")
	@ResponseBody
	public String modifyNickname(String beforeNickname, String afterNickname) throws Exception {
			
		System.out.println("변경 전: " + beforeNickname);
		System.out.println("변경 후: " + afterNickname);
		
		if(service.modifyNickname(beforeNickname, afterNickname) == 1) {
			MemberDTO dto = new MemberDTO();
			dto.setNickname(afterNickname);
			System.out.println(dto);
			dto = service.getMemberByNickOrPhone(dto);
			this.session.setAttribute("loginSession", dto);
			return "success";
		} else {
			return "fail";
		}
	}
		
	// 전화번호 변경
	@RequestMapping("/modifyPhone.do")
	@ResponseBody
	public String modifyPhone(String beforePhone, String afterPhone) throws Exception {
			
		System.out.println("변경 전: " + beforePhone);
		System.out.println("변경 후: " + afterPhone);
			
		if(service.modifyPhone(beforePhone, afterPhone) == 1) {
			MemberDTO dto = new MemberDTO();
			dto.setPhone(afterPhone);
			System.out.println(dto);
			dto = service.getMemberByNickOrPhone(dto);
			this.session.setAttribute("loginSession", dto);
			return "success";
		} else {
			return "fail";
		}
	}
		
	// 아이디와 비밀번호로 사용자 여부 체크
	@RequestMapping("/checkMemberByIdAndPw.do")
	@ResponseBody
	public String checkMemberByIdAndPw(String id, String pw) throws Exception {
		System.out.println(id);
		System.out.println(pw);
			
		String password = EncrytionUtils.getSHA512(pw);
		if(service.checkMemberByIdAndPw(id, password) == 1) {
			return "checkOk";
		} else {
			return "checkFail";
		}
	}

}
