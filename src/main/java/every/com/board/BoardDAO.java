package every.com.board;

import java.util.ArrayList;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAO {
	@Autowired
	private SqlSession session;

	// 게시글 등록
	public int insertBoard(BoardDTO dto) throws Exception {
		
		session.insert("boardMapper.insertBoard", dto);
		return dto.getSeq_column();
	}
	
	public int updateBoard(BoardDTO dto) throws Exception {
		session.update("boardMapper.updateBoard", dto);
		return dto.getSeq_column();
	}
	
	public int selectSeq() throws Exception{
		return session.selectOne("boardMapper.selectSeq");
	}

	// 게시글 모두 가져오기
	public List<BoardDTO> selectAll() throws Exception {
		return session.selectList("boardMapper.selectAll");
	}

	// 게시글 하나 가져오기
	public BoardDTO selectOne(int seq_column) throws Exception {
		return session.selectOne("boardMapper.selectOne", seq_column);
	}
	
	public int countAll() {
		return session.selectOne("boardMapper.countAll");
	}
	
	public List<BoardDTO> getBoardList(int startRange, int endRange){
		System.out.println("startRange " + startRange +" endRange "+ endRange );
		HashMap<String, Integer> map = new HashMap<>();
		map.put("startRange", startRange);
		map.put("endRange", endRange);
		return session.selectList("boardMapper.getBoardList",map);
	}
	
	public int deleteBoard(int seq_column) {
		return session.delete("boardMapper.deleteBoard",seq_column);
	}
	
	
}
