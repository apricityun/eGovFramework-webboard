package egovframework.wsy.dao.impl;

import java.util.Arrays;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import egovframework.wsy.dao.BoardDAO;
import egovframework.wsy.service.BoardMapper;
import egovframework.wsy.vo.BoardVO;

@Repository
public class BoardDAOImpl implements BoardDAO {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<BoardVO> selectBoardList(BoardVO boardVO) throws Exception {
		BoardMapper bMapper = sqlSession.getMapper(BoardMapper.class);
		return bMapper.selectBoardList(boardVO);
	}

	@Override
	public BoardVO selectBoardDetail(int boardId) {
		System.out.println("BoardDAOImpl.....enter");
		System.out.println("BoardDAOImpl.....bId"+boardId);
		BoardMapper bMapper = sqlSession.getMapper(BoardMapper.class);
		return bMapper.selectBoardDetail(boardId);
	}

	@Override
	public void insertBoard(BoardVO boardVO) {
		BoardMapper bMapper = sqlSession.getMapper(BoardMapper.class);
		bMapper.insertBoard(boardVO);
	}

	@Override
	public void updateBoard(BoardVO boardVO) {
		BoardMapper bMapper = sqlSession.getMapper(BoardMapper.class);		
		bMapper.updateBoard(boardVO);
	}

	@Override
	public void deleteBoard(int boardId) {
		BoardMapper bMapper = sqlSession.getMapper(BoardMapper.class);
		bMapper.deleteBoard(boardId);
	}

}
