package tyCafe.login.Dao.Impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import tyCafe.login.Dao.LoginDao;
import tyCafe.login.VO.LoginVO;

@Repository("LoginDao")
public class LoginDaoImpl implements LoginDao {
	
	@Autowired(required=false)
    private SqlSession sqlSession;

    public void setSqlSession(org.apache.ibatis.session.SqlSession sqlSession) {
        this.sqlSession = sqlSession;
    }
    
    @Override
    //嚥≪����占쎌��
    public LoginVO memberLogin(LoginVO loginVO) throws Exception {
    	sqlSession.selectOne("memberLogin", loginVO);
        return sqlSession.selectOne("memberLogin", loginVO);
    }
}
