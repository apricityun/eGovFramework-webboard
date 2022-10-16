<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../includes/header.jsp" %>
<div class="container" style="margin-bottm:0">
	<h3>Board Write</h3>
	<form id="insert" action="insertBoard.do" method="post" encType="multiplart/form-data">
	    <div class="form-group">
		      <label for="title">title</label>
		      <input type="text" class="form-control" id="title" name="title" placeholder="Enter title">
	    </div>
	    <div class="form-group">
		      <label for="writer">writer</label>
		      <input type="text" class="form-control" id="writer" name="writer" value="로그인 유저" readonly="readonly">
	    </div>
	    <div class="form-group">
		      <label for="content">content</label>
		      <textarea class="form-control" rows="7" id="content" name="content" placeholder="content ....">
		      </textarea>
	    </div>
	    <button id="btnList" type="button" class="btn btn-primary btn-sm">글목록</button>
	    <button id="btnWrite" type="submit" class="btn btn-primary btn-sm">글쓰기</button>
	</form>
</div>
<script type="text/javascript">
//글쓰기
$(document).on('click', '#btnWrite', function(e){
	$("#insert").submit();
});
$("#btnList").click(function list(){
	$(location).attr('href', 'boardList.do');
});
//글목록
</script>
<%@ include file="../includes/footer.jsp" %>	    