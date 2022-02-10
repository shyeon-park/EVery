package every.com.qna;

import java.text.SimpleDateFormat;
import java.util.Date;

public class qnaDTO {
	private int seq_qna;
	private String id;
	private String nickname;
	private String qna_title;
	private String qna_content;
	private Date qna_written_date;
	private String answer;
	
	public qnaDTO() {
		super();
	}
	public qnaDTO(int seq_qna, String id, String nickname, String qna_title, String qna_content,
			Date qna_written_date, String answer) {
		super();
		this.seq_qna = seq_qna;
		this.id = id;
		this.nickname = nickname;
		this.qna_title = qna_title;
		this.qna_content = qna_content;
		this.qna_written_date = qna_written_date;
		this.answer = answer;
	}
	
	public int getSeq_qna() {
		return seq_qna;
	}
	public void setSeq_qna(int seq_qna) {
		this.seq_qna = seq_qna;
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
	public String getQna_title() {
		return qna_title;
	}
	public void setQna_title(String qna_title) {
		this.qna_title = qna_title;
	}
	public String getQna_content() {
		return qna_content;
	}
	public void setQna_content(String qna_content) {
		this.qna_content = qna_content;
	}
	public String getQna_written_date() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd");
		return sdf.format(qna_written_date);
	}
	public void setQna_written_date(Date qna_written_date) {
		this.qna_written_date = qna_written_date;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
}
