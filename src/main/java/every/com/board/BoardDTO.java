package every.com.board;

import java.sql.Date;

public class BoardDTO {

		private int seq_column;
		private String id;
		private String nickname;
		private String title;
		private String content;
		private Date written_date;
		private int view_count;
		private String sys_name;
		private String profile;
		
		public String getSys_name() {
			return sys_name;
		}
		public void setSys_name(String sys_name) {
			this.sys_name = sys_name;
		}
		public String getProfile() {
			return profile;
		}
		public void setProfile(String profile) {
			this.profile = profile;
		}
		public BoardDTO() {}
		public BoardDTO(int seq_column, String id, String nickname, String title, String content, Date written_date,
				int view_count) {
			super();
			this.seq_column = seq_column;
			this.id = id;
			this.nickname = nickname;
			this.title = title;
			this.content = content;
			this.written_date = written_date;
			this.view_count = view_count;
		}
		public int getSeq_column() {
			return seq_column;
		}
		public void setSeq_column(int seq_column) {
			this.seq_column = seq_column;
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
		public String getTitle() {
			return title;
		}
		public void setTitle(String title) {
			this.title = title;
		}
		public String getContent() {
			return content;
		}
		public void setContent(String content) {
			this.content = content;
		}
		public Date getWritten_date() {
			return written_date;
		}
		public void setWritten_date(Date written_date) {
			this.written_date = written_date;
		}
		public int getView_count() {
			return view_count;
		}
		public void setView_count(int view_count) {
			this.view_count = view_count;
		}
		

		
		@Override
		public String toString() {
			return "BoardDTO [seq_column=" + seq_column + ", id=" + id + ", nickname=" + nickname + ", title=" + title
					+ ", content=" + content + ", written_date=" + written_date + ", view_count=" + view_count
					+ ", sys_name=" + sys_name + ", profile=" + profile + "]";
		}
		
	}

