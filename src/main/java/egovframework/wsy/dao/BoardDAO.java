package egovframework.wsy.dao;

import java.util.List;

import egovframework.wsy.vo.BoardVO;

public interface BoardDAO {
	
	public List<BoardVO> selectBoardList(BoardVO boardVO) throws Exception;

	public BoardVO selectBoardDetail(int boardId);

	public void insertBoard(BoardVO boardVO);

	public void updateBoard(BoardVO boardVO);

	public void deleteBoard(int boardId);
}
