package egovframework.example.hanq.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.example.hanq.service.HanqService;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Controller
public class HanqController {

	@Resource
	private HanqService hanqService;
	
	@RequestMapping(value="/pieChart.do")
	public String Hanq(ModelMap model) throws Exception {
		List<EgovMap> hanqPieList = hanqService.selectHanqPieList(); 
		
		model.addAttribute("hanqPieList", hanqPieList);
		
		return "hanq/pieChart.tiles";	
	}
	
	@RequestMapping(value="/tableList.do")
	public String Hanq2(ModelMap model) throws Exception {
		List<EgovMap> hanqTableList = hanqService.selectHanqTableList(); 
		
		model.addAttribute("hanqTableList", hanqTableList);
		
		return "hanq/tableList.tiles";		
	}
}
