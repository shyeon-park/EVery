<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
<style type="text/css">
table th td {
border: 1px solid black;
}
  #bell{
      position: relative;
      cursor: pointer;
      
    }
    .fa-bell{
      position: absolute;
      font-size: 38px;
    }
    #bell_text{
      position: relative;
      color: white;
      font-weight: 700;
      font-size: large;
      width: 27px;
      left: 25px;
      top : -10px;
      display: inline-block;
      background-color: red;
      border-radius: 100%;
      text-align: center;
    }
</style>

</head>
<body>
<div>
	<div class="row">
	신청자 목록
	</div>
	
	<table class="form-control">
	
		<thead>
		<tr>
			<th><input type="checkbox" name="" id="cbx_chkAll"></th>
			<th>id</th>
			<th>닉네임</th>
			<th>삭제버튼</th>
			<th id = "bell">
			  <i class="far fa-bell" data-bs-toggle="modal" data-bs-target="#bellModal"></i>
	   		  <div id ="bell_text"></div>
			</th>
		</tr>
		</thead>
		<tbody>
			
		</tbody>
		<tfoot>
			<button type='button' id='approval'>승인</button>reject
			<button type='button' id='reject'>거부</button>
		</tfoot>
	</table>
</div>
	<script type="text/javascript">
	ws = new WebSocket("ws://172.30.1.60/column");
	
	
	$('#approval').on("click",function(e){
	 	 var approvaList = new Array(); // 배열 선언
	 	 $('input:checkbox[name=columId]:checked').each(function() { // 체크된 체크박스의 value 값을 가지고 온다.
	 		approvaList.push(this.value);
	 	 });
	 	 if(approvaList.length != 0){
	 		let msg = { category: "Approval", list: approvaList };
	 		let msgToJson = JSON.stringify(msg);
	 		ws.send(msgToJson);
		 }else{
	 		 alert("승인할 사람을 선택하세요.")
	 	 }
	})
	
		$('#reject').on("click",function(e){
	 	
	 	 var rejectList = new Array(); // 배열 선언
	 	 $('input:checkbox[name=columId]:checked').each(function() { // 체크된 체크박스의 value 값을 가지고 온다.
	 		rejectList.push(this.value);
	 	 });
	 	 if(rejectList.length != 0){
	 		let msg = { category: "Reject", list: rejectList };
	 		let msgToJson = JSON.stringify(msg);
	 		ws.send(msgToJson);
	 	 }else{
	 		 alert("거절할 사람을 선택하세요.")
	 	 }
	})
	
	document.addEventListener('click',function(e){
        if(e.target.id == 'cbx_chkAll'){
        if ($("#cbx_chkAll").prop("checked"))  $("input[name=columId]").prop("checked", true)
        else  $("input[name=columId]").prop("checked", false)
        }});
	
	
	 
	
	
	     
	 //메세지수신
	 ws.onmessage = function(e) {
	    		let msgObj = JSON.parse(e.data);
	    		console.log(msgObj);
	    			notCheckedcount = msgObj.notCheckedcount
	    			console.log("클라이언트가 확인 안한 메세지 개수는 "+ notCheckedcount);
	    			$("#bell_text").empty();
	    			//$(".modal-footer").empty();
	    			$("#bell_text").append(notCheckedcount);
	 
	 			if(msgObj.getColumAppList != null){
	 				getColumAppList = msgObj.getColumAppList;
	 				
	 				$("tbody").empty();
	 				for(newList of getColumAppList){
						let newTr = $("<tr>");
						let addTable = "<td><input type='checkbox' name = 'columId' value='"+newList.id+"'></td>"
								  	   +"<td>"+newList.id+"</td>"
								  	   + "<td>"+newList.nickname+"</td>"
					    newTr = newTr.append(addTable);		
						$("tbody").append(newTr);
					}	
	 				
	 			}
	}
	 
	 
	 
	</script>
</body>
</html>