package every.com.message;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MessageDAO {

	@Autowired
	private SqlSession session;
	
	
	public int messageInsert(MessageDTO dto){
		return session.insert("messageMapper.messageInsert",dto);
	}
	
	public List<MessageDTO> messageNotCheckList(String id) {
		return session.selectList("messageMapper.messageNotCheckList",id);
	}
	
	public List<MessageDTO> messageCheckList(String id){
		return session.selectList("messageMapper.messageCheckList",id);
	}
	public int messageCheck(ArrayList<Integer> list) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		return session.update("messageMapper.messageCheck",map);
	}
	
	public int deleteMsg(ArrayList<Integer> list) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		return session.delete("messageMapper.deleteMsg",map);
	}
	
	public int notCheckedcount(String id) {
		return session.selectOne("messageMapper.notCheckedcount",id);
	}
	
	public int checkedcount(String id) {
		return session.selectOne("messageMapper.checkedcount",id);
	}
}
