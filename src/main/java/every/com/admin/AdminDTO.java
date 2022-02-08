package every.com.admin;

public class AdminDTO {

	private String admin_id;
	private String admin_pw;
	
	public AdminDTO() {}

	public AdminDTO(String admin_id, String admin_pw) {
		super();
		this.admin_id = admin_id;
		this.admin_pw = admin_pw;
	}

	public String getAdmin_Id() {
		return admin_id;
	}

	public void setAdmin_Id(String admin_id) {
		this.admin_id = admin_id;
	}

	public String getAdmin_Pw() {
		return admin_pw;
	}

	public void setAdmin_Pw(String admin_pw) {
		this.admin_pw = admin_pw;
	}
}
