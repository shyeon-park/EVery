package every.com.blacklist;

import java.text.SimpleDateFormat;
import java.util.Date;

public class blacklistDTO {
	private String id;
	private String nickname;
	private String reason;
	private Date black_date;
	
	public blacklistDTO() {
		super();
	}
	public blacklistDTO(String id, String nickname, String reason, Date black_date) {
		super();
		this.id = id;
		this.nickname = nickname;
		this.reason = reason;
		this.black_date = black_date;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public String getBlack_date() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd");
		return sdf.format(black_date);
	}
	public void setBlack_date(Date black_date) {
		this.black_date = black_date;
	}
}
