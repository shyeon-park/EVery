package every.com.member;

import java.sql.Date;

public class MemberDTO {
	private String id;
	private String pw;
	private String nickname;
	private String phone;
	private int identification_num;
	private int column_application;
	private String naver_num;
	private String kakao_num;
	private Date signup_date;
	
	
	public MemberDTO() {}

	public MemberDTO(String id, String pw, String nickname, String phone, int identification_num,
			int column_application, String naver_num, String kakao_num, Date signup_date) {
		super();
		this.id = id;
		this.pw = pw;
		this.nickname = nickname;
		this.phone = phone;
		this.identification_num = identification_num;
		this.column_application = column_application;
		this.naver_num = naver_num;
		this.kakao_num = kakao_num;
		this.signup_date = signup_date;
	}
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getIdentification_num() {
		return identification_num;
	}

	public void setIdentification_num(int identification_num) {
		this.identification_num = identification_num;
	}

	public int getColumn_application() {
		return column_application;
	}

	public void setColumn_application(int column_application) {
		this.column_application = column_application;
	}

	public String getNaver_num() {
		return naver_num;
	}

	public void setNaver_num(String naver_num) {
		this.naver_num = naver_num;
	}
	
	public String getKakao_num() {
		return kakao_num;
	}
	
	public void setKakao_num(String kakao_num) {
		this.kakao_num = kakao_num;
	}

	public Date getSignup_date() {
		return signup_date;
	}

	public void setSignup_date(Date signup_date) {
		this.signup_date = signup_date;
	}

	public String toString() {
		return "id: " + id + ", pw: " + pw + ", nickname: " + nickname + ", phone: " + phone + ", naver_num: " + naver_num + ", kakao_num: " + kakao_num;  
	}
	
}
