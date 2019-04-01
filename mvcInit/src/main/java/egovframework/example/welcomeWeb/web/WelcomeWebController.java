package egovframework.example.welcomeWeb.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.example.welcomeWeb.service.WelcomeWebService;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Controller
public class WelcomeWebController {

	@Resource
	private WelcomeWebService welcomeWebService;
	
	@RequestMapping(value="/welcomeWeb.do")
	public String welcomeWeb(ModelMap model) throws Exception {
		List<EgovMap> welcomeWebList = welcomeWebService.selectWelcomeWebServiceList(); 	
		System.out.println(welcomeWebList);
		
		List<EgovMap> pieChartList = welcomeWebService.selectPieChartList();
		System.out.println(pieChartList);
		
		model.addAttribute("welcomeWebList", welcomeWebList);
		model.addAttribute("pieChartList", pieChartList);
		
		return "welcomeWeb/welcomeWeb.tiles";
	}
	
}
