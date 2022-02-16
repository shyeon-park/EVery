package every.com.utils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

public class AdminInterceptor implements HandlerInterceptor{
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		//true  : 원래 클라이언트가 요청한 url로 이동
		//false : 컨트롤러로 요청값이 넘어가지 못하게 함.
		
		if(request.getSession().getAttribute("adminLoginSession") == null){
			System.out.println("매니저 홈으로 이동");
			response.sendRedirect("/");
			return false;
		}
			return true;

	}
}
