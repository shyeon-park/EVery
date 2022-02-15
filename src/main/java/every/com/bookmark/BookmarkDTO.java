package every.com.bookmark;

public class BookmarkDTO {
	private String id;
	private String station;
	private String institutionNm;
	private String rdnmadr;
	private String chrstnLcDesc;
	private String useTime;
	private String phoneNumber;
	private String restde;
	private String latitude;
	private String longitude;
	
	public BookmarkDTO() {}
	
	public BookmarkDTO(String id, String station, String institutionNm, String rdnmadr, String chrstnLcDesc,
			String useTime, String phoneNumber, String restde, String latitude, String longitude) {
		super();
		this.id = id;
		this.station = station;
		this.institutionNm = institutionNm;
		this.rdnmadr = rdnmadr;
		this.chrstnLcDesc = chrstnLcDesc;
		this.useTime = useTime;
		this.phoneNumber = phoneNumber;
		this.restde = restde;
		this.latitude = latitude;
		this.longitude = longitude;
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

	public String getInstitutionNm() {
		return institutionNm;
	}

	public void setInstitutionNm(String institutionNm) {
		this.institutionNm = institutionNm;
	}

	public String getRdnmadr() {
		return rdnmadr;
	}

	public void setRdnmadr(String rdnmadr) {
		this.rdnmadr = rdnmadr;
	}

	public String getChrstnLcDesc() {
		return chrstnLcDesc;
	}

	public void setChrstnLcDesc(String chrstnLcDesc) {
		this.chrstnLcDesc = chrstnLcDesc;
	}

	public String getUseTime() {
		return useTime;
	}

	public void setUseTime(String useTime) {
		this.useTime = useTime;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getRestde() {
		return restde;
	}

	public void setRestde(String restde) {
		this.restde = restde;
	}

	public String getLatitude() {
		return latitude;
	}

	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}

	public String getLongitude() {
		return longitude;
	}

	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}


	
	
}
