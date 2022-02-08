package every.com.file;

public class FileDTO {
	private int seq_file;
	private int seq_column;
	private String ori_name;
	private String sys_name;
	private int profile;
	
	public FileDTO() {}

	public FileDTO(int seq_file, int seq_column, String ori_name, String sys_name, int profile) {
		super();
		this.seq_file = seq_file;
		this.seq_column = seq_column;
		this.ori_name = ori_name;
		this.sys_name = sys_name;
		this.profile = profile;
	}

	public int getSeq_file() {
		return seq_file;
	}

	public void setSeq_file(int seq_file) {
		this.seq_file = seq_file;
	}

	public int getSeq_column() {
		return seq_column;
	}

	public void setSeq_column(int seq_column) {
		this.seq_column = seq_column;
	}

	public String getOri_name() {
		return ori_name;
	}

	public void setOri_name(String ori_name) {
		this.ori_name = ori_name;
	}

	public String getSys_name() {
		return sys_name;
	}

	public void setSys_name(String sys_name) {
		this.sys_name = sys_name;
	}

	public int getProfile() {
		return profile;
	}

	public void setProfile(int profile) {
		this.profile = profile;
	}

	
}
