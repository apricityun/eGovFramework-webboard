package egovframework.wsy.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.wsy.service.BoardService;
import egovframework.wsy.vo.BoardVO;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	@RequestMapping("boardList.do")
	public String boardList(BoardVO boardVO, Model model) throws Exception {
		model.addAttribute("bList", boardService.selectBoardList(boardVO));
		System.out.println("Controller....model"+model);
		return "board/boardList";
	}
	
	@RequestMapping("boardDetail.do")
	public String boardDetail(Model model, HttpServletRequest request) throws Exception {
		System.out.println("boardDetail....enter");
		int bid = Integer.parseInt(request.getParameter("boardId"));
		BoardVO boardVO = boardService.selectBoardDetail(bid);
		model.addAttribute("bDetail", boardVO);
		System.out.println("boardDetail.....bDetail"+model.toString());
		return "board/boardDetail";
	}
	
//글 작성 페이지
	@RequestMapping("boardRegister.do")
	public String boardRegister() {
		return "board/boardRegister";
	}
//글쓰기
	@RequestMapping("insertBoard.do")
	public String write(@ModelAttribute("boardVO") BoardVO boardVO) throws Exception {
		boardService.insertBoard(boardVO);
		return "redirect:boardList.do";
	}
	
	@RequestMapping("boardUpdate.do")
	public String boardUpdate(@ModelAttribute("boardVO") BoardVO boardVO) throws Exception {
		boardService.updateBoard(boardVO);
		System.out.println("[Cont]boardUpdate.....ing");
		return "redirect:boardDetail.do?boardId="+boardVO.getBoardId();
	}
	
	@RequestMapping("boardDelete.do")
	public String boardDelete(HttpServletRequest request) throws Exception {
		int boardId = Integer.parseInt(request.getParameter("boardId"));
		boardService.deleteBoard(boardId);
		return "redirect:boardList.do";
	}
}
