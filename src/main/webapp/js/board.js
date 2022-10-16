/**
 * 
 */
 $(document).ready(function(){
//boardList.jsp 글쓰기 버튼 클릭 시,
 	$("#btnWrite").click(function write(){
		$(location).attr('href', 'boardRegister.do');
	});
//boardDetail.jsp update
//boardDetail.jsp의 form id인 boardDetailForm
// 	$("#btnUpdate").click(function(e){
// 		if(confirm("really update...?") == true){
// 			$("#boardDetailForm").submit();
// 		}else{
// 			return;
// 		}
// 	});
 });
//boardDetail.jsp update
 $(document).on('click', '#btnUpdate', function(e){
 	if(confirm("really update??")== true){
 		$("#boardDetailForm").submit();
 	}else{
 		return;
 	}
 });