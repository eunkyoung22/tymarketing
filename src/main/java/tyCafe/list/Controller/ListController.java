package tyCafe.list.Controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import tyCafe.list.Service.ListService;
import tyCafe.list.VO.ListVO;

@RestController
public class ListController {
	
	@Autowired(required=false)
	private ListService listService;
	
	@RequestMapping(value="/api/v1/list", method=RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> list(@RequestParam Map<String, Object> paramMap) throws Exception {
		Map<String, Object> responseBody = new HashMap<String, Object>();
		
		int memberNum = (paramMap.get("memberNum")!=null ? Integer.parseInt(paramMap.get("memberNum").toString()):0);
		paramMap.put("memberNum", memberNum);
		
		System.out.println("Controller11111111111111");
		
		try {
			List<ListVO> selectCafeList = listService.selectCafeList(paramMap);
			System.out.println("Controller22222222222");
			responseBody.put("status", HttpStatus.OK);
			responseBody.put("data", selectCafeList);
			System.out.println("Controller3333333333");
			return new ResponseEntity(responseBody, HttpStatus.OK);
		} catch (Exception e) {
            responseBody.put("status", HttpStatus.BAD_REQUEST);
            return new ResponseEntity(responseBody, HttpStatus.BAD_REQUEST);
        }
	}
}
