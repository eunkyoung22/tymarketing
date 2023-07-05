package tyCafe.login.Controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import tyCafe.login.Service.LoginService;
import tyCafe.login.VO.LoginVO;

@RestController
public class LoginController {
	
	@Autowired(required=false)
	private LoginService loginService;
	
	@Controller
	public class LoginJava {
		@RequestMapping(value="/list", method=RequestMethod.GET)
	    public String urlTest() {
	        return "/list";    // JSP 寃쎈�
	    }
	}

	
	//濡�洹�?��
	@RequestMapping(value="/api/v1/login", method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> login(@RequestBody LoginVO loginVO) throws Exception {
		Map<String, Object> responseBody = new HashMap<String, Object>();
		
		try {
			LoginVO login = loginService.memberLogin(loginVO);
			
			if(login != null) {
				responseBody.put("status", getStatusObject(HttpStatus.OK));
                responseBody.put("message", "로그인 성공");
                responseBody.put("data", login);

                return new ResponseEntity(responseBody, HttpStatus.OK);
			} else {
                responseBody.put("status", getStatusObject(HttpStatus.UNAUTHORIZED));
                responseBody.put("message", "비밀번호 불일치");

                return new ResponseEntity(responseBody, HttpStatus.UNAUTHORIZED);
            }
		} catch (Exception e) {
            responseBody.put("status", getStatusObject(HttpStatus.INTERNAL_SERVER_ERROR));
            responseBody.put("message", "로그인 오류.");
            return new ResponseEntity(responseBody, HttpStatus.INTERNAL_SERVER_ERROR);
        }
	}
	
	
	private Map<String, Object> getStatusObject(HttpStatus status) {
        Map<String, Object> statusObject = new HashMap<String, Object>();
        statusObject.put("code", status.value());
        statusObject.put("message", status.getReasonPhrase());
        return statusObject;
    }
}
