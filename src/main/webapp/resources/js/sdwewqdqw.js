
 getBoardList(1)
			
		function getBoardList(currentPage){
			$.ajax({
				type: "post", //요청 메소드 방식
				url:"${pageContext.request.contextPath}/board/boardlist.do?currentPage="+currentPage,
				success : function(res){
					console.log(res);
					columnList = res.columnList;
					$(".list").empty();
					$("#nevi").empty();
					let data = res.list
					if(data == null || data =="" ){
						let list = "리스트가 비어있습니다"
						$("#nevi").empty();
						let writeBtn = "<button type='button' class='btn btn-success' id='writeBtn'>글쓰기</button>";
						$(".list").append(list)
						$("#nevi").append(writeBtn)
						
					}else{
						for(var con of data){
							
							//console.log(con.profile == null)
							let content = con.content  //상세게시글 내용 변수에 담는다
							let imgRemove = /<IMG(.*?)>/gi; // 이미지  지우는 regx 
							content = content.replace(imgRemove, ''); // 이미지를 지움
							content = content.replace(/(<([^>]+)>)/ig,''); //그 외 태그 제거
							subtitle = content.substring(0,30)
							 let date = con.written_date.replace(/,/,"")
							 let written_date = date.split(" ");
							 date = written_date[2]+"년 "+written_date[0]+" "+written_date[1]+"일"
							let list = "<div class='col-12 col-md-6 col-lg-4 cardContainer'>"
			                			+"<div class='titleImg w-100'>"
				                		+"<a href='${pageContext.request.contextPath}/board/detail.do?seq_column="+con.seq_column+"' class='atag'>"
				                				if(con.profile == null || con.profile==""){
				                			    list +="<img src="
				                			    	+"'${pageContext.request.contextPath}/resources/images/colum/imagedoesnot exist.png'"
				                			    	+"class='card-img-top' alt='...'>"
				                			    }else{
				                			    console.log("'${pageContext.request.contextPath}/upload/"+con.sys_name+"'");	
				                			    list +="<img src="
				                			    	+"'${pageContext.request.contextPath}/upload/"+con.sys_name+"'"
				                			       	+"class='card-img-top' alt='...'>"	
												}
												list += "</a>"
				                   				+"<div class='colum-body'>"
					                   			+"<p class='colum-title'>"
				                   				+"<a href='${pageContext.request.contextPath}/board/detail.do?seq_column="+con.seq_column+"'>"
					                     		+con.title
					                     		+"</a></p>"
					                     		+"<p class='colum-text'>"+date+"</p>"
				                      			+"<p class='colum-text'>"+subtitle+"...</p>"
				                    			+"</div>"
			                   				+"</div>"
			            				+"</div>"
		            					$(".list").append(list)
						  } // LIST 출력
						  
						  let startNavi = res.startNavi
						  let endNavi = res.endNavi
						  let nevi = "<nav aria-label='Page navigation example'>"
							  		+"<ul class='pagination d-flex justify-content-center m-0'>"
							if(res.needPrev) nevi +="<li class='page-item'><a class='page-link' onclick='getBoardList(" + startNavi + "-1);'>Prev</a></li>"
							for(let i = startNavi; i<=endNavi; i++){
								nevi += "<li class='page-item'><a class='page-link' onclick='getBoardList(" + i + ");'>" + i + "</a></li>"
							}
							if(res.needNext) nevi += "<li class='page-item'><a class='page-link' onclick='getBoardList(" +endNavi+ "+1);'>Next</a></li>"
							
							
							nevi +="</ul>"
							nevi += "</nav>"
								for(col_id of columnList){
									if("${loginSession.id}" == col_id.id){
										nevi += "<button type='button' class='btn btn-success' id='writeBtn'>글쓰기</button>";
									}
								}
							
							$("#nevi").append(nevi)
							
							//prev start +1
							//next end +1
					}
				},
				error : function(e){
					console.log(e);
				}
			});
		}
		
		
		// 로그아웃 요청
		$("#logoutBtn").on("click", function(){
			location.href = "${pageContext.request.contextPath}/member/logout.do";
		});
		// 글쓰기 페이지 요청
		document.addEventListener('click',function(e){
			console.log(e.target.id)
	        if(e.target.id == 'writeBtn'){
	        	location.href = "${pageContext.request.contextPath}/board/toWrite.do";
	     }});