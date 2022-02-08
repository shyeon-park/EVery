package every.com.file;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FileService {
	@Autowired
	private FileDAO dao;
	
	public List<FileDTO> selectProfile(int seq_file) throws Exception{
		return dao.selectProfile(seq_file);
	}
	
	public int insertFile(FileDTO dto) throws Exception{
		return dao.insertFile(dto);
	}
	
	public List<FileDTO> selectDTO(int seq_file) throws Exception{
		return dao.selectDTO(seq_file);
	}
	
	public int deleteFile(int seq_file) throws Exception{
		return dao.deleteFile(seq_file);
	}
}
