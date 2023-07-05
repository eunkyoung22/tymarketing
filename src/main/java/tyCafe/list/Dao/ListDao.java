package tyCafe.list.Dao;

import java.util.List;
import java.util.Map;

import tyCafe.list.VO.ListVO;

public interface ListDao {
	List<ListVO> selectCafeList(Map<String, Object> paramMap) throws Exception;
}
