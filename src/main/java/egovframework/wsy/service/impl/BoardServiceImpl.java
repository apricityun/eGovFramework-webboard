package egovframework.wsy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import egovframework.wsy.dao.BoardDAO;
import egovframework.wsy.service.BoardService;
import egovframework.wsy.vo.BoardVO;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardDAO boardDAO;
	
	@Override
	public List<BoardVO> selectBoardList(BoardVO boardVO) throws Exception {
		return boardDAO.selectBoardList(boardVO);
	}

	@Override
	public BoardVO selectBoardDetail(int boardId)  {
		System.out.println("boardService...boardId....."+boardId);
		return boardDAO.selectBoardDetail(boardId);
	}

	@Override
	public void insertBoard(BoardVO boardVO) {
		boardDAO.insertBoard(boardVO);
	}

	@Override
	public void updateBoard(BoardVO boardVO) {
		boardDAO.updateBoard(boardVO);
	}

	@Override
	public void deleteBoard(int boardId) {
		boardDAO.deleteBoard(boardId);
	}
}
