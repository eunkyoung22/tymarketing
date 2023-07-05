package tyCafe.login.Dao;

import tyCafe.login.VO.LoginVO;

public interface LoginDao {
	
	//濡쒓렇�씤
    public LoginVO memberLogin(LoginVO loginVO) throws Exception;
}
