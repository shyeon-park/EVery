/**
 * 
 */

 
 	     
 	    ws = new WebSocket("ws://13.209.89.225:8080/column");
		     //메세지수신
		ws.onmessage = function(e) {
			//console.log( e.data );
			let msgObj = JSON.parse(e.data);
			//console.log(msgObj);
			
				notCheckedcount = msgObj.notCheckedcount
				//console.log("클라이언트가 확인 안한 메세지 개수는 "+ notCheckedcount);
				$("#bell_text").empty();
				$("#footerBtnAdd").empty();
				$("#bell_text").append(notCheckedcount);
				
				//새로운 메세지 리스트 출력
				if(msgObj.category == "getUncheckedList"){
					let uncheckedList = msgObj.uncheckedList
					$("#listPrint").empty();
					$("#footerBtnAdd").empty();
					for(newMsg of uncheckedList){
						let newTr = $("<tr>");
						let aa = "<td class='text-center'><input type='checkbox' name = 'newMsg' value='"+newMsg.seq_message+"'></td>"
								  +"<td class=''>"+newMsg.written_date+"</td>"
								  + "<td class=''>"+newMsg.msg+"</td>"
					    newTr = newTr.append(aa);		
						$("#listPrint").append(newTr);
					}	
					
					let newBtn =  "<button type='button' class='btn btn-primary' onclick='messageCheck();'>확인</button>"
					$("#footerBtnAdd").append(newBtn);
				//확인된 목록
				}else if(msgObj.category == "getCheckedList"){
					$("#listPrint").empty();
					checkedList = msgObj.checkedList
					for(newMsg of checkedList){
						let newTr = $("<tr>");
						let aa = "<td class='text-center'><input type='checkbox' name = 'newMsg' value='"+newMsg.seq_message+"'></td>"
								  +"<td class=''>"+newMsg.written_date+"</td>"
								  + "<td class=''>"+newMsg.msg+"</td>"
					    newTr = newTr.append(aa);		
						$("#listPrint").append(newTr);
					}
					
					let newBtn =  "<button type='button' class='btn btn-primary' onclick='deleteMsg()'>삭제</button>"
					$("#footerBtnAdd").append(newBtn);
				}	
		}