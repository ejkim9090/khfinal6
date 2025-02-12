package com.mycompany.loanplan;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mycompany.loanplan.admin.model.service.AdvertiseService;
import com.mycompany.loanplan.admin.model.vo.Advertise;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private AdvertiseService advertiseService;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home(Locale locale, Model model, ModelAndView mv) {
		logger.info("Welcome home! The client locale is {}.", locale);
		List<Advertise> advertiseList = advertiseService.advertiseList();
		mv.addObject("advertiseList", advertiseList);
		mv.setViewName("home");
		return mv;
		
	}
	
}
