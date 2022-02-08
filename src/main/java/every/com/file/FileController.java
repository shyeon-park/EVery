package every.com.file;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.JsonObject;

import every.com.board.BoardDAO;

@Controller
@RequestMapping("/file")
public class FileController {
	@Autowired
	private FileService service;
	@Autowired 
	private HttpSession session;
	@Autowired
	private BoardDAO bDao;
	
	private List list = new ArrayList<String>();
	
	
	@RequestMapping("/download.do")
	public void download(HttpServletResponse response, String ori_name, String sys_name) throws Exception{
		
		// 파일이 저장된 폴더 경로
		String realPath = session.getServletContext().getRealPath("upload");
		System.out.println(realPath);
		
		// 다운로드할 파일의 총 경로
		File targetFile = new File(realPath+File.separator+sys_name);
		
		System.out.println(targetFile);
		
		ori_name = new String(ori_name.getBytes(), "ISO-8859-1");
		response.setHeader("Content-Disposition", "attachment; filename=\"" + ori_name + "\";");
		
		try( DataInputStream dis = new DataInputStream(new FileInputStream(targetFile));
			 DataOutputStream dos = new DataOutputStream(response.getOutputStream())){
			
			byte[] arr = dis.readAllBytes();
			dos.write(arr);
			dos.flush();			
		}
	}
	
	@RequestMapping(value="/uploadSummernoteImageFile", produces = "application/json; charset=utf8")
	@ResponseBody
	public String uploadSummernoteImageFile(@RequestParam("file") MultipartFile multipartFile, HttpServletRequest request )  {
		JsonObject jsonObject = new JsonObject();
		
        /*
		 * String fileRoot = "C:\\summernote_image\\"; // 외부경로로 저장을 희망할때.
		 */
		
		// 내부경로로 저장
		String fileRoot = session.getServletContext().getRealPath("upload");//파일이 저장될 경로
		String originalFileName = multipartFile.getOriginalFilename();	//오리지날 파일명
		String extension = originalFileName.substring(originalFileName.lastIndexOf("."));	//파일 확장자
		String savedFileName = UUID.randomUUID() + extension;	//저장될 파일 명
		File targetFile = new File(fileRoot +File.separator+ savedFileName);	
		System.out.println("저장경로 + 이름 "+ targetFile);
		
		//폴더가 없으면 폴더를 만들어줌.
		File filePath = new File(fileRoot);
		if(!filePath.exists()) filePath.mkdir();
		
		try {
			InputStream fileStream = multipartFile.getInputStream(); // 파일 연결을 이어주는 통로 
			System.out.println("fileStream : "+ fileStream);
			//드래그 앤 드랍시 파일 통로를 열어서 네트워크로 읽어들인다.
			FileUtils.copyInputStreamToFile(fileStream, targetFile);	//파일 저장
			//인풋 스트림에서 데이터를 읽어들여 targetFile 복사한다.
			
			//list가 삭제가 됐으면
			if(request.getSession().getAttribute("savedFileName") == null) {
				list.clear();
				System.out.println("list 비어짐.");
			}
				list.add(savedFileName);
				request.getSession().setAttribute("savedFileName", list);
			//System.out.println("세션에 값이 있나요? : "+request.getSession().getAttribute("savedFileName") == null);
			jsonObject.addProperty("url", "/upload/"+savedFileName); // resources + 저장할 내부 폴더명
			jsonObject.addProperty("responseCode", "success");
				
		} catch (IOException e) {
			FileUtils.deleteQuietly(targetFile);	//저장된 파일 삭제
			jsonObject.addProperty("responseCode", "error");
			e.printStackTrace();
		}
		String a = jsonObject.toString();
		return a;
	}
}
