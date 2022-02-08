package every.com.message;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import every.com.member.MemberDAO;





@Service
public class MessageService {
	
	@Autowired
	MessageDAO dao;
	@Autowired
	MemberDAO memDao;
	
	public int messageInsert(String id, String nickname,String msg) throws Exception {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 hh시 mm분");
		long written_date_long = System.currentTimeMillis();
		String written_date = sdf.format(written_date_long);
		System.out.println(written_date);
		MessageDTO dto = new MessageDTO(id,nickname,msg,written_date);
		int rs = dao.messageInsert(dto);
		return rs;
	}
	
	public int notCheckedcount(String id) {
		return dao.notCheckedcount(id);
	}
	
	public int messageCheck(ArrayList<Integer> list) {
		return dao.messageCheck(list);
	}
	
	public int deleteMsg(ArrayList<Integer> list) {
		return dao.deleteMsg(list);
	}
	public List<MessageDTO> messageNotCheckList(String id) {
		return dao.messageNotCheckList(id);
	}
	
	public List<MessageDTO> messageCheckList(String id){
		return dao.messageCheckList(id);
	}
	
	//승인작업완료
	public int approval(ArrayList<String> list) throws Exception{
		return memDao.approval(list);
	}
	
	//거절작업완료
	public int reject(ArrayList<String> list) throws Exception{
		return memDao.reject(list);
	}
	

}
