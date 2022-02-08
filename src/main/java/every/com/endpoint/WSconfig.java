package every.com.endpoint;

import javax.servlet.http.HttpSession;

import javax.websocket.HandshakeResponse;
import javax.websocket.server.HandshakeRequest;
import javax.websocket.server.ServerEndpointConfig;
import javax.websocket.server.ServerEndpointConfig.Configurator;

public class WSconfig extends Configurator{
	
	@Override
	//핸드 훼이킹 과정에 우리가 끼어들어 셋팅해주라는 값이나, 담아서 보내주라는 값을 셋팅해줄 수 있음
	//ServerEndpointConfig endpoint에다가 전달해주는 바구니
	public void modifyHandshake(ServerEndpointConfig config, HandshakeRequest req, HandshakeResponse res) {
		HttpSession session = (HttpSession)req.getHttpSession();
		//ServerEndpointConfig 객체를 이용해 서버 앤드포인트에서는 접근 할 수 없는 HttpSession 객체를 담아주는 역할.
		config.getUserProperties().put("hSession", session);
		super.modifyHandshake(config, req, res);
	
	}
}
