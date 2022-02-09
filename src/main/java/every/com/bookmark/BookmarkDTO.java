package every.com.bookmark;

public class BookmarkDTO {
	private String id;
	private String station;
	
	public BookmarkDTO() {}

	public BookmarkDTO(String id, String station) {
		super();
		this.id = id;
		this.station = station;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getStation() {
		return station;
	}

	public void setStation(String station) {
		this.station = station;
	}
}
