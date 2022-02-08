package every.com.message;

public class MessageDTO {
	private int seq_message;
	private String id; 
	private String nickname; 
	private String msg; 
	private int message_check; 
	private String written_date;
	
	
	public MessageDTO() {}


	public MessageDTO(String id, String nickname, String msg, String written_date) {
		super();
		this.id = id;
		this.nickname = nickname;
		this.msg = msg;
		this.written_date = written_date;
	}


	public int getSeq_message() {
		return seq_message;
	}


	public void setSeq_message(int seq_message) {
		this.seq_message = seq_message;
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


	public String getMsg() {
		return msg;
	}


	public void setMsg(String msg) {
		this.msg = msg;
	}


	public int getMessage_check() {
		return message_check;
	}


	public void setMessage_check(int message_check) {
		this.message_check = message_check;
	}


	public String getWritten_date() {
		return written_date;
	}


	public void setWritten_date(String written_date) {
		this.written_date = written_date;
	}
	
	
	
	
}
