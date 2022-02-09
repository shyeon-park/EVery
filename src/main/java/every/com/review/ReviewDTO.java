package every.com.review;

public class ReviewDTO {
	private int seq_review;
	private String station;
	private String id;
	private String nickname;
	private String review;
	private String written_date;
	
	public ReviewDTO() {}

	public ReviewDTO(int seq_review, String station, String id, String nickname, String review, String written_date) {
		super();
		this.seq_review = seq_review;
		this.station = station;
		this.id = id;
		this.nickname = nickname;
		this.review = review;
		this.written_date = written_date;
	}

	public int getSeq_review() {
		return seq_review;
	}

	public void setSeq_review(int seq_review) {
		this.seq_review = seq_review;
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
