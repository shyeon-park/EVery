package every.com.utils;

import org.springframework.stereotype.Service;
import java.util.HashMap;
import org.json.simple.JSONObject;
import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Service
public class CoolSmsService {

	public void certifiedPhoneNum(String phoneNum, int cerNum) {
	    String api_key = "NCSCR8CMYCCWSJ1S";
	    String api_secret = "XUFK4XVKVESVMOVYTTFFQUCTZECVU7V1";
	    Message coolsms = new Message(api_key, api_secret);

	    // 4 params(to, from, type, text) are mandatory. must be filled
	    HashMap<String, String> params = new HashMap<String, String>();
	    params.put("to", phoneNum);
	    params.put("from", "01050214297");
	    params.put("type", "SMS");
	    params.put("text", "[EVery] EVery 회원 인증번호 [" + cerNum + "]를 입력해주세요.");
	    params.put("app_version", "test app 1.2"); // application name and version

	    try {
	      JSONObject obj = (JSONObject) coolsms.send(params);
	      System.out.println(obj.toString());
	    } catch (CoolsmsException e) {
	      System.out.println(e.getMessage());
	      System.out.println(e.getCode());
	    }
	  
	}
}
