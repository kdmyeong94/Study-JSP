package com.koreait.board.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.board.mybatis.SqlMapConfig;

public class BoardDAO {

	 SqlSessionFactory factory = SqlMapConfig.getFactory();
	 SqlSession sqlsession;
	 
	 public BoardDAO() {
		 sqlsession = factory.openSession(true);
	 }


	public List<BoardDTO> getBoardList(int startRow, int endRow) {
		HashMap<String, Integer> datas = new HashMap<>();
		datas.put("startRow", startRow);
		datas.put("endRow", endRow);
		List<BoardDTO> boardList = sqlsession.selectList("Board.getBoardList", datas);
		
		return boardList;
	}


	public int getBoardCnt() {
		return sqlsession.selectOne("Board.getBoardCnt");
		
	}
	 
}
