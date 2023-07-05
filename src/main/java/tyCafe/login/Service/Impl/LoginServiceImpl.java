package tyCafe.login.Service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tyCafe.login.Dao.LoginDao;
import tyCafe.login.Service.LoginService;
import tyCafe.login.VO.LoginVO;

@Service("LoginService")
public class LoginServiceImpl implements LoginService {
	
	@Autowired(required=false)
    LoginDao loginDao;
	
	@Override
    public LoginVO memberLogin(LoginVO loginVO) throws Exception {
    	LoginVO user = loginDao.memberLogin(loginVO);

        return user;
    }

}
