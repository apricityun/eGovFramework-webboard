<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../includes/header.jsp" %>
	<div class="container" style="margin-bottm:0">
	    <h3>Board List(count)</h3>
	    <div class="form-group text-right">
            <button type="button" class="btn btn-secondary btn-sm" id="btnWrite">글쓰기</button>
	    </div>
	    <table class="table table-striped table-hover">
	    	<colgroup>
	    		<col width="20%"/>
	    		<col width="35%"/>
	    		<col width="15%"/>
	    		<col width="20%"/>
	    		<col width="10%"/>
	    	</colgroup>
	    	<thead>
	    		<tr>
	    			<th class="text-center">글번호</th>
	    			<th class="text-center">글제목</th>
	    			<th class="text-center">작성자</th>
	    			<th class="text-center">작성일</th>
	    			<th class="text-center">조회수</th>
	    		</tr>
	    	</thead>
	    	<tbody>
	    		<c:forEach items="${bList }" var="result">
					<tr>
		    			<td class="text-center">${result.boardId}</td>
		    			<td class="text-center"><a href="boardDetail.do?boardId=${result.boardId }">${result.title}</a></td>
		    			<td class="text-center">${result.writer}</td>
		    			<td class="text-center">${result.regDate}</td>
		    			<td class="text-center">00</td>
		    		</tr>
	    		</c:forEach>
	    	</tbody>
	    	<tfoot></tfoot>
	    </table>
	    <hr/>
	    <!-- 페이지 처리 -->
	    <div id="paginationBox">
	    	<ul class="pagination justify-content-center">
	    		<%-- <c:if test="${p.startPage > p.blockSize}">
	    			<li class="page-item"><a class="page-link"></a></li>
	    		</c:if> --%>
	    		<li class="page-item"><a href="#" style="margin-right:5px;" class="text-secondary">Pre</a></li>
	    		<li class="page-item"><a href="#" style="margin-right:5px;" class="text-secondary">1</a></li>
	    		<li class="page-item"><a href="#" style="margin-right:5px;" class="text-secondary">2</a></li>
	    		<li class="page-item"><a href="#" style="margin-right:5px;" class="text-secondary">3</a></li>
	    		<li class="page-item"><a href="#" style="margin-right:5px;" class="text-secondary">Next</a></li>
	    	</ul>
	    </div>
	</div>
</body>
<!-- 글쓰기 버튼 클릭 시, 페이지 이동(*경로 시작이 /이면 루트부터 내려옴) -->
<script type="text/javascript" src="/js/board.js"></script>
</html>
<%@ include file="../includes/footer.jsp" %>