package every.com.review;

public class ReviewDTO {
	private int seq_reviewSS;
	private String station;
	private String id;
	private String nickname;
	private String review;
	private String written_date;
	
	public ReviewDTO() {}

	public ReviewDTO(int seq_reviewSS, String station, String id, String nickname, String review, String written_date) {
		super();
		this.seq_reviewSS = seq_reviewSS;
		this.station = station;
		this.id = id;
		this.nickname = nickname;
		this.review = review;
		this.written_date = written_date;
	}

	public int getSeq_reviewSS() {
		return seq_reviewSS;
	}

	public void setSeq_reviewSS(int seq_reviewSS) {
		this.seq_reviewSS = seq_reviewSS;
	}

	public String getStation() {
		return station;
	}

	public void setStation(String station) {
		this.station = station;
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

	public String getReview() {
		return review;
	}

	public void setReview(String review) {
		this.review = review;
	}

	public String getWritten_date() {
		return written_date;
	}

	public void setWritten_date(String written_date) {
		this.written_date = written_date;
	}
}
