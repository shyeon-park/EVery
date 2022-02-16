package every.com.faq;

import java.text.SimpleDateFormat;
import java.util.Date;

public class faqDTO {
	private int seq_faq;
	private String admin_id;
	private String faq_title;
	private String faq_content;
	private Date faq_written_date;
	
	public faqDTO() {
		super();
	}
	public faqDTO(int seq_faq, String admin_id, String faq_title, String faq_content, Date faq_written_date) {
		super();
		this.seq_faq = seq_faq;
		this.admin_id = admin_id;
		this.faq_title = faq_title;
		this.faq_content = faq_content;
		this.faq_written_date = faq_written_date;
	}
	
	public int getSeq_faq() {
		return seq_faq;
	}
	public void setSeq_faq(int seq_faq) {
		this.seq_faq = seq_faq;
	}
	public String getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}
	public String getFaq_title() {
		return faq_title;
	}
	public void setFaq_title(String faq_title) {
		this.faq_title = faq_title;
	}
	public String getFaq_content() {
		return faq_content;
	}
	public void setFaq_content(String faq_content) {
		this.faq_content = faq_content;
	}
	public String getFaq_written_date() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd");
		return sdf.format(faq_written_date);
	}
	public void setFaq_written_date(Date faq_written_date) {
		this.faq_written_date = faq_written_date;
	}
	@Override
	public String toString() {
		return "faqDTO [seq_faq=" + seq_faq + ", admin_id=" + admin_id + ", faq_title=" + faq_title + ", faq_content="
				+ faq_content + ", faq_written_date=" + faq_written_date + "]";
	}
	
	
}
