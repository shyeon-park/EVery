package every.com.utils;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class ExceptionController {
	@ExceptionHandler
	public String toError(Exception e) {
		e.printStackTrace();
		return "redirect:/toError";
	}
}
