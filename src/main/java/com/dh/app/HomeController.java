package com.dh.app;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import net.sf.jasperreports.engine.JRDataSource;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/test.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "main";
	}
	
	@RequestMapping(value = "/reports/test.pdf")
	public ModelAndView test(HttpServletRequest request,HttpServletResponse response) throws Exception{


		List<HashMap<String, String>> list = new ArrayList<HashMap<String,String>>();
		
		HashMap<String,String> map =new HashMap<String,String>();
		
		map.put("TEST", "DD");
		
		list.add(map);
		
		
		JRDataSource basketDS = new JRBeanCollectionDataSource(list);

        // In order to use Spring's built-in Jasper support,
		// We are required to pass our datasource as a map parameter
		// modelMap is the Model of our application
		Map<String,Object> modelMap = new HashMap<String,Object>();
		modelMap.put("basketReport", basketDS);


        // pdfReport is the View of our application
		// This is declared inside the jasper-views.xml
		ModelAndView modelAndView = new ModelAndView("pdfReport", modelMap);

		// Return the View and the Model combined
		return modelAndView;

	}
	
}
