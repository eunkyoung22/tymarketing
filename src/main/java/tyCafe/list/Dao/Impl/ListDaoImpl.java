package tyCafe.list.Dao.Impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import tyCafe.list.Dao.ListDao;
import tyCafe.list.VO.ListVO;

@Repository("ListDao")
public class ListDaoImpl implements ListDao {
	@Autowired(required=false)
    private SqlSession sqlSession;

    public void setSqlSession(org.apache.ibatis.session.SqlSession sqlSession) {
        this.sqlSession = sqlSession;
    }
    
    @Override
    public List<ListVO> selectCafeList(Map<String, Object> paramMap) throws Exception {
    	System.out.println("Daooooooooooooooo");
    	return sqlSession.selectList("selectCafeList", paramMap);
    }
}
