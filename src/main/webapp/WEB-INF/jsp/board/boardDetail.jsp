<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../includes/header.jsp" %>
	<div class="container" style="margin-bottm:0">
	    <h3>Board Detail : 해당 글 제목 링크</h3>
<!-- input id=label for / name=field(?) / value=db data -->
<!-- bDetail.~는 BoardController에서 model 객체에 담아 보낸 이름 -->
	    <form action="boardUpdate.do" id="boardDetailForm" method="post" enctype="multiplart/form-data">
	    	<div class="form-group">
<!-- ${bDetail.boardId } -->
		    	<label for="num">글번호</label>
		    	<input type="text" class="form-control" id="num" name="boardId" value="${bDetail.boardId }" readonly="readonly">
		    </div>
		    <div class="form-group">
		    	<label for="title">제목</label>
		    	<input type="text" class="form-control" id="title" name="title" value="${bDetail.title }" >
		    </div>
		    <div class="form-group">
		    	<label for="regDate">등록일</label>
		    	<input type="text" class="form-control" id="regDate" name="regDate" value="${bDetail.regDate}" readonly="readonly">
		    </div>
		    <div class="form-group">
		    	<label for="updateDate">수정일</label>
		    	<input type="text" class="form-control" id="updateDate" name="updateDate" value="${bDetail.updateDate}" readonly="readonly">
		    </div>
		    <div class="form-group">
		    	<label for="count">조회수</label>
		    	<input type="text" class="form-control" id="count" name="" value="00" readonly="readonly">	    
		    </div>
		    <div class="form-group">
		    	<label for="content">내용</label>
		    	<input type="text" class="form-control" id="content" name="content" value="${bDetail.content }">
		    </div>
	<!-- btn -->
		    <div class="form-group text-right">
		    	<button type="button" class="btn btn-secondary btn-sm" id="btnUpdate">수정하기</button>
		    	<button type="button" class="btn btn-secondary btn-sm" id="btnDelete">삭제하기</button>
		    </div>
	    </form>
</body>
<script type="text/javascript">
//boardDetail.jsp update
$(document).on('click', '#btnUpdate', function(e){
	if(confirm("really update??")== true){
		$("#boardDetailForm").submit();
	}else{
		return;
	}
});
$(document).on('click', '#btnDelete', function(e){
	var boardId = ${bDetail.boardId};
	if(confirm("really Delete?") == true){
		$("#boardDetailForm").attr("action", "boardDelete.do?boardId="+boardId);
		$("#boardDetailForm").submit();
	}else{
		return;
	}
});
</script>
<!-- 수정/삭제 버튼 클릭 시, 페이지 이동(*경로 시작이 /이면 루트부터 내려옴) update/delete는 링크로 실행이 안 됨.-->
<!-- <script type="text/javascript" src="/js/board.js"></script> -->
</html>
<%@ include file="../includes/footer.jsp" %>