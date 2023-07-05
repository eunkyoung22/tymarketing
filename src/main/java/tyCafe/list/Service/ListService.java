package tyCafe.list.Service;

import java.util.List;
import java.util.Map;

import tyCafe.list.VO.ListVO;

public interface ListService {
	
	List<ListVO> selectCafeList(Map<String, Object> paramMap) throws Exception;
}
