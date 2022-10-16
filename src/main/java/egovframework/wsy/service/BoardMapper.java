package egovframework.wsy.service;

import java.util.List;

import egovframework.wsy.vo.BoardVO;

public interface BoardMapper {
	List<BoardVO> selectBoardList(BoardVO boardVO) throws Exception;

//	BoardVO selectBoardList(int boardId);
	BoardVO selectBoardDetail(int boardId);
	
	void insertBoard(BoardVO boardVO);

	void updateBoard(BoardVO boardVO);

	void deleteBoard(int boardId);
}
