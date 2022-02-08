package every.com.board;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import every.com.file.FileDAO;
import every.com.file.FileDTO;





@Service
public class BoardService {
	@Autowired
	private BoardDAO boardDao;
	@Autowired
	private FileDAO fileDao;
	@Autowired 
	private HttpSession session;
	
	public int insertBoard(BoardDTO dto, MultipartFile[] files, String realPath) throws Exception{
		
		int board_seq = boardDao.selectSeq();
		System.out.println(board_seq);
		
		// 1. 게시글 등록
		dto.setSeq_column(board_seq); // 게시글에 게시글번호 셋팅 
		boardDao.insertBoard(dto);
		if(session.getAttribute("savedFileName") != null) {
			ArrayList<String> list =(ArrayList)session.getAttribute("savedFileName");
			for(String li : list) {
				System.out.println("세션의 들어간 파일 네임은 :" + li);
				fileDao.insertFile(new FileDTO(0,board_seq,li,li,0));
			}
		    session.removeAttribute("savedFileName"); 
		}
		
		// 2. 파일 테이블에 파일 정보 등록
		// 경로가 없다면 만들어주는 작업
		File filePath = new File(realPath);
		if(!filePath.exists()) filePath.mkdir();
		
		for(MultipartFile file : files) {
			if(!file.isEmpty()) {
				String ori_name = file.getOriginalFilename();
				String sys_name = UUID.randomUUID() + "_" + ori_name;
				
				file.transferTo(new File(realPath+File.separator+sys_name));
				fileDao.insertFile(new FileDTO(0, board_seq, ori_name, sys_name,1));
			}
		}
		return 0;
	}
	
public int updateBoard(BoardDTO dto, MultipartFile[] files, String realPath) throws Exception{
		
		int board_seq = dto.getSeq_column();
		System.out.println("업데이트 보드 실행 " + board_seq);
	
		/*
		// 1. 기존 폴더 안 파일 제거  
		ArrayList<FileDTO> delFileList = (ArrayList)fileDao.selectDTO(board_seq);
		for(FileDTO fileDto : delFileList) {
			System.out.println("이 보드가 가지고있는 사진은 " + fileDto.getFile_seq());
			System.out.println("이 보드가 가지고있는 사진은 " + fileDto.getSys_name());
			
		}
		
			for(FileDTO fileDto : delFileList) {
				File file = new File(realPath+File.separator+fileDto.getSys_name());
				if(file.exists()) {
					System.out.println(realPath+File.separator+fileDto.getSys_name());
					file.delete();
					System.out.println("파일이 삭제되었습니다");
				}
			}
		
		//db 삭제
			int deleteFileLength = fileDao.deleteFile(board_seq);
			System.out.println("삭제된 파일의 수는 " + deleteFileLength);
		*/
		
		// 2. 게시글 수정

		boardDao.updateBoard(dto);
	
		if(session.getAttribute("savedFileName") != null) {
			ArrayList<String> list =(ArrayList)session.getAttribute("savedFileName");
			for(String li : list) {
				System.out.println("세션의 들어간 파일 네임은 :" + li);
				fileDao.insertFile(new FileDTO(0,board_seq,li,li,0));
			}
		    session.removeAttribute("savedFileName"); 
		}
		
		
		// 2. 파일 테이블에 파일 정보 등록
		// 경로가 없다면 만들어주는 작업
		File filePath = new File(realPath);
		if(!filePath.exists()) filePath.mkdir();
		
		for(MultipartFile file : files) {
			if(!file.isEmpty()) {
				fileDao.deleteProfile(board_seq);
				String ori_name = file.getOriginalFilename();
				String sys_name = UUID.randomUUID() + "_" + ori_name;
				
				file.transferTo(new File(realPath+File.separator+sys_name));
				fileDao.insertFile(new FileDTO(0, board_seq, ori_name, sys_name,1));
			}
		}
		
		return 0;
	}

public int deleteBoard(int board_seq, String realPath) throws Exception{


	
	// 1. 기존 폴더 안 파일 제거  
	ArrayList<FileDTO> delFileList = (ArrayList)fileDao.selectDTO(board_seq);
	for(FileDTO fileDto : delFileList) {
		System.out.println("이 보드가 가지고있는 사진은 " + fileDto.getSeq_file());
		System.out.println("이 보드가 가지고있는 사진은 " + fileDto.getSys_name());
		
	}
	
		for(FileDTO fileDto : delFileList) {
			File file = new File(realPath+File.separator+fileDto.getSys_name());
			if(file.exists()) {
				System.out.println(realPath+File.separator+fileDto.getSys_name());
				file.delete();
				System.out.println("파일이 삭제되었습니다");
			}
		}
	
	//db 파일 삭제
		int deleteFileLength = fileDao.deleteFile(board_seq);
		System.out.println("삭제된 파일의 수는 " + deleteFileLength);
	
		int rs = boardDao.deleteBoard(board_seq);
		System.out.println("삭제된 보드는 " + rs);
	
	return rs;
}
	
	public BoardDTO selectOne(int board_seq) throws Exception{
		return boardDao.selectOne(board_seq);
	}
	
	public List<BoardDTO> selectAll() throws Exception{
		return boardDao.selectAll();
	}
}
