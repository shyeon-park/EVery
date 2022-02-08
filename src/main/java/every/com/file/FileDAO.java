package every.com.file;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class FileDAO {
	@Autowired
	private SqlSession session;
	
	public int insertFile(FileDTO dto) throws Exception{
		return session.insert("fileMapper.insertFile", dto);
	}
	
	//프로필 찾아오는 
	public List<FileDTO> selectProfile(int seq_file) throws Exception{
		return session.selectList("fileMapper.selectProfile", seq_file);
	}
	
	public List<FileDTO> selectDTO(int seq_file) throws Exception{
		return session.selectList("fileMapper.selectDTO", seq_file);
	}
	
	public int deleteProfile(int seq_file) throws Exception{
		return session.delete("fileMapper.deleteProfile",seq_file);
	}
	
	public int deleteFile(int seq_file) throws Exception{
		return session.delete("fileMapper.deleteFile",seq_file);
	}
	
}
