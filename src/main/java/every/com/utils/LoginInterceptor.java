package every.com.utils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginInterceptor implements HandlerInterceptor {
	// Interceptor : 컨트롤러로 요청 값이 전달되기 전/후 중간에서
	//				 값을 가로채 팔요한 작업을 해줄 수 있는 인터페이스

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		//true  : 원래 클라이언트가 요청한 url로 이동
		//false : 컨트롤러로 요청값이 넘어가지 못하게 함.
		
		if(request.getSession().getAttribute("loginSession") == null){
			System.out.println("홈으로 이동");
			response.sendRedirect("/");
			return false;
		}
			return true;
	}
	

}
