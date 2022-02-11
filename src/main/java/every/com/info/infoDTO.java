package every.com.info;

import java.text.SimpleDateFormat;
import java.util.Date;

public class infoDTO {
	private int seq_info;
	private String admin_id;
	private String info_title;
	private String info_content;
	private Date info_written_date;
	
	public infoDTO() {
		super();
	}
	public infoDTO(int seq_info, String admin_id, String info_title, String info_content, Date info_written_date) {
		super();
		this.seq_info = seq_info;
		this.admin_id = admin_id;
		this.info_title = info_title;
		this.info_content = info_content;
		this.info_written_date = info_written_date;
	}
	
	public int getSeq_info() {
		return seq_info;
	}
	public void setSeq_info(int seq_info) {
		this.seq_info = seq_info;
	}
	public String getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}
	public String getInfo_title() {
		return info_title;
	}
	public void setInfo_title(String info_title) {
		this.info_title = info_title;
	}
	public String getInfo_content() {
		return info_content;
	}
	public void setInfo_content(String info_content) {
		this.info_content = info_content;
	}
	public String getInfo_written_date() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd");
		return sdf.format(info_written_date);
	}
	public void setInfo_written_date(Date info_written_date) {
		this.info_written_date = info_written_date;
	}
}
