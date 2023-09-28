package com.fss.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.fss.model.merchant;

@Controller
public class HomeController {

	//Hashmap
	Map<String, merchant> mp = new HashMap<String, merchant>();

	@Autowired
	merchant merchant;

	@RequestMapping(value = "/")
	public ModelAndView test(HttpServletResponse response) throws IOException {
		System.out.println("HomeController.test()");
		return new ModelAndView("welcome");
	}

	@RequestMapping(value = "/welcome")
	public ModelAndView test1(HttpServletResponse response) throws IOException {
		System.out.println("HomeController.test1()");
		return new ModelAndView("welcome");
	}

	@RequestMapping(value = "/configuration", method = RequestMethod.GET)
	public String viewRegistrationForm(Model model) {
		System.out.println("HomeController.viewRegistrationForm()");
		merchant merchant = new merchant();
		model.addAttribute("merchant", merchant);

		List<String> categoryList = Arrays.asList("MCC1", "MCC2", "MCC3", "MCC4", "MCC5", "MCC6", "MCC7", "MCC8",
				"MCC9", "MCC10");
		model.addAttribute("categoryList", categoryList);

		List<String> countryList = Arrays.asList("India", "USA", "UAE");
		model.addAttribute("countryList", countryList);

		List<String> regionList = Arrays.asList("East", "West", "North", "South");
		model.addAttribute("regionList", regionList);

		List<String> stateList = Arrays.asList("Bihar", "Jharkhand", "Goa", "Maharashtra", "Uttar Pradesh",
				"Uttarakhand", "Karnataka", "Tamil Nadu");
		model.addAttribute("stateList", stateList);

		List<String> cityList = Arrays.asList("Patna", "Gaya", "Ranchi", "Bokaro", "Panji", "Madgaon", "Pune", "Mumbai",
				"Varanasi", "Prayagraj", "Dehradun", "Haridwar", "Bengaluru", "Shivamogga", "Chennai", "Coimbatore");
		model.addAttribute("cityList", cityList);

		List<String> statusList = Arrays.asList("Active", "In-Active");
		model.addAttribute("statusList", statusList);

		return "configuration";
	}

	@RequestMapping(value = "/configuration", method = RequestMethod.POST)
	public String doRegistration(@ModelAttribute("merchant") merchant merchant, HttpServletRequest request) {
		System.out.println("HomeController.doRegistration()");
		/* System.out.println(merchant); */

		if (merchant.getMemail() != null) {
			mp.put(merchant.getMemail(), merchant);
		}
		request.setAttribute("mp", mp);
		System.out.println(mp);
		return "configurationSucess";
	}

	@RequestMapping(value = "/delete")
	public String doDelete(Model model) {
		System.out.println("HomeController.doDelete()");
		merchant mc = new merchant();
		model.addAttribute("merchant", mc);
		return "delete";
	}

	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String doDelete(HttpServletRequest req) {
		System.out.println("HomeController.doDelete()");
		String email = req.getParameter("memail");
		mp.remove(email);
		System.out.println("Email" + email);
		return "welcome";
	}

	@RequestMapping(value = "/update")
	public String doUpdate(Model model) {
		System.out.println("HomeController.doUpdate()");
		merchant mc = new merchant();
		model.addAttribute("merchant", mc);
		return "update";
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String doUpdate(Model model, HttpServletRequest request) {
		System.out.println("HomeController.doUpdate()");
		String updateEmail = request.getParameter("memail");
		merchant mc = new merchant();
		model.addAttribute("merchant", mc);

		List<String> mpkeylist = new ArrayList<String>();

		mp.forEach((k, v) -> mpkeylist.add(k));

		if (!mpkeylist.contains(updateEmail)) {
			model.addAttribute("merchant", mc);
			return "update";
		}

		// mpkeylist.add(k)
		List<String> categoryList = Arrays.asList("MCC1", "MCC2", "MCC3", "MCC4", "MCC5", "MCC6", "MCC7", "MCC8",
				"MCC9", "MCC10");
		model.addAttribute("categoryList", categoryList);

		List<String> countryList = Arrays.asList("India", "USA", "UAE");
		model.addAttribute("countryList", countryList);

		List<String> regionList = Arrays.asList("East", "West", "North", "South");
		model.addAttribute("regionList", regionList);

		List<String> stateList = Arrays.asList("Bihar", "Jharkhand", "Goa", "Maharashtra", "Uttar Pradesh",
				"Uttarakhand", "Karnataka", "Tamil Nadu");
		model.addAttribute("stateList", stateList);

		List<String> cityList = Arrays.asList("Patna", "Gaya", "Ranchi", "Bokaro", "Panji", "Madgaon", "Pune", "Mumbai",
				"Varanasi", "Prayagraj", "Dehradun", "Haridwar", "Bengaluru", "Shivamogga", "Chennai", "Coimbatore");
		model.addAttribute("cityList", cityList);

		List<String> statusList = Arrays.asList("Active", "In-Active");
		model.addAttribute("statusList", statusList);

		return "configuration";
	}
}
