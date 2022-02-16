package every.com.endpoint;

import java.util.ArrayList;


import java.util.Collections;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.websocket.EndpointConfig;
import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import com.google.gson.Gson;

import every.com.admin.AdminDTO;
import every.com.admin.AdminService;
import every.com.member.MemberDTO;
import every.com.member.MemberService;
import every.com.message.MessageService;


@ServerEndpoint(value = "/column", configurator = WSconfig.class)
public class ColumnEndPoint {
	// 현재 들어와있는 사용자 수
	private static List<Session> clients = Collections.synchronizedList(new ArrayList<>());

	// 현재 나의 httpSession
	private HttpSession httpSession;
	private MemberService service = SpringContext.getApplicationContext().getBean(MemberService.class);
	private MessageService messageService = SpringContext.getApplicationContext().getBean(MessageService.class);
	private AdminService adiminService = SpringContext.getApplicationContext().getBean(AdminService.class);
	// 현재 웹소켓 세션과 http세션
	private static HashMap<Session, HttpSession> sessionMap = new HashMap<>();

	@OnOpen
	public void onConnet(Session session, EndpointConfig config) {
		System.out.println("접속완료");
		clients.add(session);
		this.httpSession = (HttpSession) config.getUserProperties().get("hSession");
		sessionMap.put(session, this.httpSession);
		Gson gson = new Gson();
		try {
			if(this.httpSession.getAttribute("loginSession") != null) {
				String type = this.httpSession.getAttribute("loginSession").getClass().getSimpleName();
				System.out.println("type : "+ type);
				  String id = ((MemberDTO)this.httpSession.getAttribute("loginSession")).getId();	
				  HashMap<String, Object> map = new HashMap<>();
				  int notCheckedcount = messageService.notCheckedcount(id);
				  MemberDTO memDto = service.getMemberDTO(id);
				  map.put("category", "listPrint");
				  map.put("memDto", memDto);
				  map.put("notCheckedcount", notCheckedcount);
				  String jObj = gson.toJson(map).toString();
				  session.getBasicRemote().sendText(jObj); 
			}else if (this.httpSession.getAttribute("adminLoginSession") != null){
				String type = this.httpSession.getAttribute("adminLoginSession").getClass().getSimpleName();
				System.out.println("type : "+ type);
				String adminID = ((AdminDTO)this.httpSession.getAttribute("adminLoginSession")).getAdmin_Id();
		
			  	HashMap<String, Object> map = new HashMap<>();
			  	//칼럼리스트 신청목록
				ArrayList<MemberDTO> getColumAppList = (ArrayList)service.columnList();
		    	map.put("getColumAppList", getColumAppList);
		    	//칼럼리스트 승인완료 목록
		    	ArrayList<MemberDTO> approvalColumnList = (ArrayList)service.getApprovalColumnList();
		    	map.put("approvalColumnList", approvalColumnList);
		    	int notCheckedcount = messageService.notCheckedcount(adminID);
				  map.put("category", "listPrint");
				 // map.put("id", id);
				  map.put("notCheckedcount", notCheckedcount);
				  String jObj = gson.toJson(map).toString();
				  session.getBasicRemote().sendText(jObj); 
			}else return;
		}catch (Exception e) {
			e.printStackTrace();
			return; 
		}
		
		System.out.println("id 접속완료");
	}

	
	/*
	 * listPrint : 칼럼리스트 출력(관리자)
	 * application : 칼럼리스트 신청 (사용자)
	 * Approval : 칼럼리스트 승인 (관리자)
	 * 
	 * */
	
	
	@OnMessage
	public void onReceive(String message, Session session) {
	 	 Gson gson = new Gson();
	 	
	 	 String id="";
			try {
				if(this.httpSession.getAttribute("loginSession") != null) {
					  id = ((MemberDTO)this.httpSession.getAttribute("loginSession")).getId();	
				}else if (this.httpSession.getAttribute("adminLoginSession") != null){
					  id = ((AdminDTO)this.httpSession.getAttribute("adminLoginSession")).getAdmin_Id();
				}else return;
			}catch (Exception e) {
				e.printStackTrace();
				return; 
			}
	 	 
		if(message.equals("getUncheckedList")) {
			
			//String id = ((MemberDTO) this.httpSession.getAttribute("loginSession")).getId();
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("category", message);
			try {
				synchronized (clients) {
					for (Session client : clients) {
						if (client.equals(session)) {
							int notCheckedcount = messageService.notCheckedcount(id);
							ArrayList<MemberDTO> mnc = (ArrayList)messageService.messageNotCheckList(id);
							map.put("notCheckedcount", notCheckedcount);
							map.put("uncheckedList", mnc);
							String jObj = gson.toJson(map).toString();
							client.getBasicRemote().sendText(jObj.toString());
						}
					}
				  }
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if(message.equals("getCheckedList")) {
			//String id = ((MemberDTO) this.httpSession.getAttribute("loginSession")).getId();
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("category", message);
			try {
				synchronized (clients) {
					for (Session client : clients) {
						if (client.equals(session)) {
							int notCheckedcount = messageService.notCheckedcount(id);
							map.put("notCheckedcount", notCheckedcount);
							ArrayList<MemberDTO> mc = (ArrayList)messageService.messageCheckList(id);
							map.put("checkedList", mc);
							String jObj = gson.toJson(map).toString();
							client.getBasicRemote().sendText(jObj.toString());
						}
					}
				  }
			} catch (Exception e) {
				e.printStackTrace();
			}
		
		}else if (message.equals("application")) {
			try {
				//관리자 리스트
				ArrayList<AdminDTO> list = (ArrayList) adiminService.managerList();
				
				synchronized (clients) {
					
					//String id = ((MemberDTO) this.httpSession.getAttribute("loginSession")).getId();
					String nickname = ((MemberDTO) this.httpSession.getAttribute("loginSession")).getNickname();
					service.columnApplication(id); // 컬럼리스트 신청 (식별자 1로 바꿈)
					HashMap<String, Object> map = new HashMap<String, Object>(); 
					map.put("category", message);
					map.put("id", id);
					map.put("nickname", nickname);
					for (AdminDTO dto : list) {
						String managerId = dto.getAdmin_Id();
						String msg = nickname+"님 컬럼리스트 신청 요청";
						int rs = messageService.messageInsert(managerId, "없음", msg);
					}
					for (Session client : clients) {
						if (client.equals(session)) { //자신에게 보내줄 메세지 
							//Message insert 작업 
							String msg = nickname+"님 컬럼리스트 신청이 완료되었습니다.";
							int rs = messageService.messageInsert(id, nickname,msg);
							int notCheckedcount = messageService.notCheckedcount(id);
							MemberDTO memDto = service.getMemberDTO(id);
							map.put("memDto", memDto);
							map.put("notCheckedcount", notCheckedcount);
							String jObj = gson.toJson(map).toString();
							client.getBasicRemote().sendText(jObj.toString());
						}else{
							for (AdminDTO dto : list) {
								//현재 접속한 세션이 있으면, 
								HttpSession httpSessionList = sessionMap.get(client);
								if (httpSessionList.getAttribute("adminLoginSession") != null){
									String adminID = ((AdminDTO)httpSessionList.getAttribute("adminLoginSession")).getAdmin_Id();
									ArrayList<MemberDTO> cal = (ArrayList)service.columnList();
									map.put("getColumAppList", cal);
									int notCheckedcount = messageService.notCheckedcount(adminID);
									map.put("notCheckedcount", notCheckedcount);
									String jObj = gson.toJson(map).toString();
									client.getBasicRemote().sendText(jObj.toString());
								}
								
							}
						}
					}
				}
			} catch (Exception e) {
				e.printStackTrace();
				return;
			}
		}else if (message.equals("Cancel")) {
			
			//칼럼리스트 취소시
			//String id = ((MemberDTO) this.httpSession.getAttribute("loginSession")).getId();
			service.cancelColumnList(id);
			
			String nickname = ((MemberDTO) this.httpSession.getAttribute("loginSession")).getNickname();
			String msg = nickname+"님 컬럼리스트 취소되었습니다.";
			try {
				int rs = messageService.messageInsert(id, nickname,msg);
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("category", message);
			try {
				synchronized (clients) {
					for (Session client : clients) {
						if (client.equals(session)) {
							int notCheckedcount = messageService.notCheckedcount(id);
							System.out.println("현재 자신의 아이디는 " + id);
						
							map.put("notCheckedcount", notCheckedcount);
							MemberDTO memDto = service.getMemberDTO(id);
							map.put("memDto", memDto);
							ArrayList<MemberDTO> mc = (ArrayList)messageService.messageCheckList(id);
							String jObj = gson.toJson(map).toString();
							client.getBasicRemote().sendText(jObj.toString());
						}
					}
				  }
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		
		}else  {
			//컬럼리스트 승인 시
			JSONParser parser = new JSONParser();
			Object obj = "";
			String category="";
			ArrayList<String> list = new ArrayList<>();
			try {
				obj = parser.parse( message );
				JSONObject jsonObj = (JSONObject) obj;
				category = (String) jsonObj.get("category");
				//System.out.println(category);
				JSONArray jsonArr = (JSONArray) jsonObj.get("list");
				//System.out.println(jsonArr.get(0).getClass().getSimpleName());
				for(int i=0;i<jsonArr.size();i++){
					String idVal = (String)jsonArr.get(i);
					list.add(idVal);
					//System.out.println(id);
				}
				
					if (category.equals("Approval")) {
					HashMap<String, Object> map = new HashMap<String, Object>(); 
					map.put("category", message);
					for(String approvalId : list) {
						String nickname = service.getNickname(approvalId);
						String msg = nickname+"님 칼럼리스트 신청이 승인되었습니다.";
						int rs = messageService.messageInsert(approvalId, nickname,msg);
					}
					
					//승인완료 
					int result = service.approval(list);
						if(result != -1) {
							synchronized (clients) {
								for (Session client : clients) {
									if (client.equals(session)) {
										//String id = ((MemberDTO) this.httpSession.getAttribute("loginSession")).getId();
										System.out.println(id);
										ArrayList<MemberDTO> cal = (ArrayList)service.columnList();//칼럼리스트 신청리스트
										ArrayList<MemberDTO> mnc = (ArrayList)messageService.messageNotCheckList(id);
										ArrayList<MemberDTO> approvalColumnList = (ArrayList)service.getApprovalColumnList();
								    	map.put("approvalColumnList", approvalColumnList);
										int notCheckedcount = messageService.notCheckedcount(id);
										map.put("notCheckedcount", notCheckedcount);
										map.put("getColumAppList", cal);
										//map.put("uncheckedList", mnc);
										String jObj = gson.toJson(map).toString();
										client.getBasicRemote().sendText(jObj.toString());
										//신청리스트 + 신청목록 list
										
									}else {
										HttpSession httpSessionList = sessionMap.get(client);
										if (httpSessionList.getAttribute("loginSession") != null) {
											for(String approvalId : list) {
												String nickname = service.getNickname(approvalId);
												int notCheckedcount = messageService.notCheckedcount(approvalId);
												map.put("notCheckedcount", notCheckedcount);
												MemberDTO memDto = service.getMemberDTO(approvalId);
												map.put("memDto", memDto);
												
												String jObj = gson.toJson(map).toString();
												client.getBasicRemote().sendText(jObj.toString());
											}
										}else {
											continue;
										}
									}
								}
							}
						}else {
							return;
						}
				}else if(category.equals("Reject")) {
					HashMap<String, Object> map = new HashMap<String, Object>(); 
					map.put("category", message);

					for(String rejectId : list) {
						String nickname = service.getNickname(rejectId);
						String msg = nickname+"님 칼럼리스트 신청이 거절되었습니다.";
						int rs = messageService.messageInsert(rejectId, nickname,msg);
					}
					//컬럼리스트 요청 거절 
					int result = service.reject(list);
						if(result != -1) {
							synchronized (clients) {
								for (Session client : clients) {
									if (client.equals(session)) {
										//String id = ((MemberDTO) this.httpSession.getAttribute("loginSession")).getId();
										System.out.println(id);
										ArrayList<MemberDTO> cal = (ArrayList)service.columnList();//칼럼리스트 신청리스트
										ArrayList<MemberDTO> mnc = (ArrayList)messageService.messageNotCheckList(id);
										ArrayList<MemberDTO> approvalColumnList = (ArrayList)service.getApprovalColumnList();
								    	map.put("approvalColumnList", approvalColumnList);
										int notCheckedcount = messageService.notCheckedcount(id);
										map.put("notCheckedcount", notCheckedcount);
										map.put("getColumAppList", cal);
										//map.put("uncheckedList", mnc);
										String jObj = gson.toJson(map).toString();
										client.getBasicRemote().sendText(jObj.toString());
										//신청리스트 + 신청목록 list
										
									}else {
										HttpSession httpSessionList = sessionMap.get(client);
										if (httpSessionList.getAttribute("loginSession") != null) {
											for(String rejectId : list) {
												String nickname = service.getNickname(rejectId);
												int notCheckedcount = messageService.notCheckedcount(rejectId);
												map.put("notCheckedcount", notCheckedcount);
												MemberDTO memDto = service.getMemberDTO(rejectId);
												map.put("memDto", memDto);
												String jObj = gson.toJson(map).toString();
												client.getBasicRemote().sendText(jObj.toString());
											}
										}else {
											continue;
										}
									}
								}
							}
						}else {
							return;
						}
				}else if(category.equals("releaseOfAuthority")) {
					HashMap<String, Object> map = new HashMap<String, Object>(); 
					map.put("category", message);

					for(String releaseOfAuthorityId : list) {
						String nickname = service.getNickname(releaseOfAuthorityId);
						String msg = nickname+"님 칼럼리스트 권한이 삭제되었습니다. 자세한 내용은 관리자에게 문의하세요.";
						int rs = messageService.messageInsert(releaseOfAuthorityId, nickname,msg);
					}
					//컬럼리스트 요청 거절 
					int result = service.reject(list);
						if(result != -1) {
							synchronized (clients) {
								for (Session client : clients) {
									if (client.equals(session)) {
										//String id = ((MemberDTO) this.httpSession.getAttribute("loginSession")).getId();
										System.out.println(id);
										ArrayList<MemberDTO> cal = (ArrayList)service.columnList();//칼럼리스트 신청리스트
										ArrayList<MemberDTO> mnc = (ArrayList)messageService.messageNotCheckList(id);
										ArrayList<MemberDTO> approvalColumnList = (ArrayList)service.getApprovalColumnList();
								    	map.put("approvalColumnList", approvalColumnList);
										int notCheckedcount = messageService.notCheckedcount(id);
										map.put("notCheckedcount", notCheckedcount);
										map.put("getColumAppList", cal);
										//map.put("uncheckedList", mnc);
										String jObj = gson.toJson(map).toString();
										client.getBasicRemote().sendText(jObj.toString());
										//신청리스트 + 신청목록 list
										
									}else {
										HttpSession httpSessionList = sessionMap.get(client);
										if (httpSessionList.getAttribute("loginSession") != null) {
											for(String rejectId : list) {
												String nickname = service.getNickname(rejectId);
												int notCheckedcount = messageService.notCheckedcount(rejectId);
												map.put("notCheckedcount", notCheckedcount);
												MemberDTO memDto = service.getMemberDTO(rejectId);
												map.put("memDto", memDto);
												String jObj = gson.toJson(map).toString();
												client.getBasicRemote().sendText(jObj.toString());
											}
										}else {
											continue;
										}
									}
								}
							}
						}else {
							return;
						}
				}else if(category.equals("msgCheck")) {
					HashMap<String, Object> map = new HashMap<String, Object>(); 
					map.put("category", "getUncheckedList");
					//메세지 확인
					ArrayList<Integer> intList = new ArrayList<>();
					for(String a : list) {
						System.out.println(a); 
						intList.add(Integer.parseInt(a));
					}
					int result = messageService.messageCheck(intList);
						if(result != -1) {
							synchronized (clients) {
								for (Session client : clients) {
									if (client.equals(session)) {
										//String id = ((MemberDTO) this.httpSession.getAttribute("loginSession")).getId();
										
										ArrayList<MemberDTO> mnc = (ArrayList)messageService.messageNotCheckList(id);
										int notCheckedcount = messageService.notCheckedcount(id);
										map.put("notCheckedcount", notCheckedcount);
										map.put("uncheckedList", mnc);
										String jObj = gson.toJson(map).toString();
										client.getBasicRemote().sendText(jObj.toString());
										//신청리스트 + 신청목록 list
									}
								}
							}
						}else {
							return;
						}
				}else if(category.equals("msgDel")) {
					HashMap<String, Object> map = new HashMap<String, Object>(); 
					map.put("category", "getCheckedList");
					//메세지 확인
					ArrayList<Integer> intList = new ArrayList<>();
					for(String a : list) {
						System.out.println(a); 
						intList.add(Integer.parseInt(a));
					}
					int result = messageService.deleteMsg(intList);
						if(result != -1) {
							synchronized (clients) {
								for (Session client : clients) {
									if (client.equals(session)) {
										//String id = ((MemberDTO) this.httpSession.getAttribute("loginSession")).getId();
										System.out.println(id);
										ArrayList<MemberDTO> mc = (ArrayList)messageService.messageCheckList(id);
										int notCheckedcount = messageService.notCheckedcount(id);
										map.put("notCheckedcount", notCheckedcount);
										map.put("checkedList", mc);
										String jObj = gson.toJson(map).toString();
										client.getBasicRemote().sendText(jObj.toString());
										//신청리스트 + 신청목록 list
									}
								}
							}
						}else {
							return;
						}
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		
		} 
		
	}//종료

	@OnClose
	// 연결이 끊어지면 실행되는 메서드
	public void onClose(Session session) {
		clients.remove(session);
		System.out.println("클라이언트의 접속이 끊어졌습니다.");
	}

}