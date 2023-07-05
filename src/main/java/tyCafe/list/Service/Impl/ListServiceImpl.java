package tyCafe.list.Service.Impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tyCafe.list.Dao.ListDao;
import tyCafe.list.Service.ListService;
import tyCafe.list.VO.ListVO;

@Service("ListService")
public class ListServiceImpl implements ListService {
	@Autowired
	ListDao listDao;
	
	@Override
	public List<ListVO> selectCafeList(Map<String, Object> paramMap) throws Exception {
		System.out.println("Serviceeeeeee");
		return listDao.selectCafeList(paramMap);
	}
}
