package com.trax.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.trax.utils.EmailService;
import com.trax.dto.LeadData;
import com.trax.entities.Lead;
import com.trax.services.LeadService;

@Controller
public class LeadController {
	
	@Autowired 
	private LeadService leadService;
	@Autowired
	private EmailService emailService;
	
	@GetMapping("home")
    public String index(Model model) {
        List<Lead> leads = leadService.getAllLeads();
        model.addAttribute("leads", leads); 
        return "home"; 
    }

	
	@RequestMapping("/viewCreateLead")
	public String viewCreateLeadPage() {
		return "create_lead";	
	}
	@RequestMapping(value = "/saveLead", method = RequestMethod.POST)
	public String saveLead(@ModelAttribute("lead") Lead lead, ModelMap model) {
		try {
			leadService.saveLeadInfo(lead);
			model.addAttribute("lead", lead);
		} catch (Exception e) {
			model.addAttribute("emailError", "this email id exists");
			return "create_lead";
		}
		return "lead_info";
	}
	@RequestMapping("/composeEmail")
	public String composeEmail(@RequestParam("email") String email, ModelMap model) {
		emailService.sendSimpleMessage("vinayvis633@gmail.com", "Testing", "Lead is saved!!");
		model.addAttribute("email", email);
		return "compose_email";
	}
	
	@RequestMapping("listall")
	public String listAllLeads(ModelMap model) {
		List<Lead> leads = leadService.getAllLeads();
		model.addAttribute("leads", leads);
		return "lead_search_result";
	}
	
	@RequestMapping("/leadInfo")
	public String leadInfo(@RequestParam("id") long id, ModelMap model) {
		Lead lead = leadService.findLeadById(id);
		model.addAttribute("lead", lead);
		return "lead_info";
	}
	
	@RequestMapping("/update")
	public String update(@RequestParam("id") Long id, ModelMap modelMap) {
		
		Lead lead = leadService.update(id);
		modelMap.addAttribute("leads", lead);
		return "update";
	}				
	 
	 @RequestMapping("/updateLead")
	 public String updateOneLead(LeadData lead, ModelMap model) {
		 Lead l = new Lead();
		 l.setId(lead.getId());
		 l.setFirstName(lead.getFirstName());
		 l.setLastName(lead.getLastName());
		 l.setLeadSource(lead.getLeadSource());
		 l.setEmail(lead.getEmail());
		 l.setMobile(lead.getMobile());
		 
		 leadService.save(l);
		 
		 model.addAttribute("msg", "Lead is updated!!");
		 List<Lead> leads = leadService.getAllLeads();
		 model.addAttribute("leads", leads);
		 return "lead_search_result";
	 }
	
	@RequestMapping("/delete")
	public String delete(@RequestParam("id") Long Id, ModelMap modelMap) {
		
		leadService.delete(Id);
		List<Lead> lead = leadService.getAllLeads();
		modelMap.addAttribute("leads", lead);
		return "lead_search_result";
		}
	}



