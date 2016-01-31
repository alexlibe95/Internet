
package gr.hua.internet.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.HttpClientErrorException;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import gr.hua.internet.controller.model.ReqApp;
import gr.hua.internet.controller.model.Email;
import gr.hua.internet.controller.model.Event;
import gr.hua.internet.controller.model.Request;


@Controller
public class HelloWorldController {
	public static final String SERVER_URI = "http://localhost:10299/SpringSecurityHelloWorlExample/";

	
	
	
 @RequestMapping("/helloworld")
 public ModelAndView hello() {
 
  
  return new ModelAndView("hello");
 }
 
 @RequestMapping("/admin")
 public ModelAndView admin() {
 
  
  return new ModelAndView("admin");
 }
	
 @RequestMapping("/info")
 public ModelAndView evts() {
 
  
  return new ModelAndView("info");
 }
 
 //Error at view
	@RequestMapping(value = "/allevents", method = RequestMethod.GET)
	public String allEvents(Locale locale, Model model) throws JsonParseException, JsonMappingException, IOException {
		RestTemplate restTemplate = new RestTemplate();

		Event[] events = restTemplate.getForObject(SERVER_URI + "allevents", Event[].class);

		
		model.addAttribute("event", events);

		System.out.println(Arrays.asList(events).size());
		
		//and do I need this JSON media type for my use case?
	    HttpHeaders headers = new HttpHeaders();
	    headers.setContentType(MediaType.APPLICATION_JSON);

	    //set my entity
	    HttpEntity<Object> entity = new HttpEntity<Object>(headers);

	    ResponseEntity<String> out = restTemplate.exchange(SERVER_URI + "allevents", HttpMethod.GET, entity, String.class);

	    
	
	    ObjectMapper mapper = new ObjectMapper();
	    //JSON from URL to Object
	    Event[] evtss = mapper.readValue(out.getBody(), Event[].class);

		System.out.println("------" + Arrays.asList(evtss).size());

	   

	    System.out.println(out.getBody());
	    System.out.println(out.getStatusCode());

		return "events";
	}
 

 @RequestMapping(value = "/newsletter", method = RequestMethod.GET)
	public String newsletter(Model model) {
		Email newEmail = new Email();
		model.addAttribute("newemail", newEmail);
		return "email";
	}
 
 @RequestMapping(value = "/addemail", method = RequestMethod.POST)
	public String addEmail(@ModelAttribute("newemail") Email eml, Model model) {

		try {
			RestTemplate restTemplate = new RestTemplate();

			MultiValueMap<String, String> parameters = new LinkedMultiValueMap<String, String>();
			parameters.add("name", eml.getName());
			parameters.add("email", eml.getEmail());

			Email response = restTemplate.postForObject(SERVER_URI + "emails/addparam", parameters,
					Email.class);

			System.out.println("Response  " + response.getName());

		} catch (HttpClientErrorException e) {

			System.out.println("error:  " + e.getResponseBodyAsString());

		} catch (Exception e) {
			System.out.println("error:  " + e.getMessage());
		}
		return "redirect:/";
	}
 
 @RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String signup(Model model) {
		Request newreq = new Request();
		model.addAttribute("newrequest", newreq);
		return "request";
	}
 @RequestMapping(value = "/addRequest", method = RequestMethod.POST)
	public String addRequest(@ModelAttribute("newrequest") Request req, Model model) {

		try {
			RestTemplate restTemplate = new RestTemplate();

			MultiValueMap<String, String> parameters = new LinkedMultiValueMap<String, String>();
			String amka = Integer.toString(req.getAmka());
			parameters.add("amka", amka);
			parameters.add("name", req.getName());
			parameters.add("surname", req.getSurname());
			parameters.add("tameio", req.getTameio());
			parameters.add("email", req.getEmail());
			
			
			Request response = restTemplate.postForObject(SERVER_URI + "request/addparam", parameters,
					Request.class);

			System.out.println("Response  " + response.getName());

			
		} catch (HttpClientErrorException e) {

			System.out.println("error:  " + e.getResponseBodyAsString());

		} catch (Exception e) {
			System.out.println("error:  " + e.getMessage());
		}
		return "redirect:/";
	}
 
 
 	@RequestMapping(value = "/Request_Appointment", method = RequestMethod.GET)
	public String app(Model model) {
		ReqApp newAppointment = new ReqApp();
		model.addAttribute("newappointment", newAppointment);
		return "request_appointment";
	}
 
 	@RequestMapping(value = "/addappointment", method = RequestMethod.POST)
	public ModelAndView addAppointment(@ModelAttribute("newappointment")ReqApp appointment,HttpServletRequest request) throws SQLException {
		
		ModelAndView model = new ModelAndView();
		try {
			RestTemplate restTemplate = new RestTemplate();

			MultiValueMap<String, String> parameters = new LinkedMultiValueMap<String, String>();
			String amka = Integer.toString(appointment.getAmka());
			parameters.add("amka", amka);
			parameters.add("name", appointment.getName());
			parameters.add("surname", appointment.getSurname());
			parameters.add("tameio", appointment.getTameio());
			parameters.add("ejetash", appointment.getEjetash());
			String eme = Integer.toString(appointment.getEmergency());
			parameters.add("emergency", eme);
			
			
			ReqApp response = restTemplate.postForObject(SERVER_URI + "req_appoinement/addparam", parameters,
					ReqApp.class);

			System.out.println("Response  " + response.getName());

			
			
		} catch (HttpClientErrorException e) {

			System.out.println("error:  " + e.getResponseBodyAsString());

		} catch (Exception e) {
			System.out.println("error:  " + e.getMessage());
		}
		model = new ModelAndView("redirect:/helloworld");
		
		return model;
	
 	}
 	
 	@RequestMapping(value = "/Check_Appointment", method = RequestMethod.GET)
	public String check(Model model) {
		ReqApp newAppointment = new ReqApp();
		model.addAttribute("check", newAppointment);
		return "check";
	}
 	
 	//Its not working
 	@RequestMapping(value = "/check", method = RequestMethod.POST)
	public ModelAndView CheckApp(@ModelAttribute("check")ReqApp appointment,HttpServletRequest request) throws SQLException {
		
		ModelAndView model = new ModelAndView();
		try {
			RestTemplate restTemplate = new RestTemplate();

			MultiValueMap<String, String> parameters = new LinkedMultiValueMap<String, String>();
			String amka = Integer.toString(appointment.getAmka());
			parameters.add("amka", amka);
			
			
			
			ReqApp response = restTemplate.postForObject(SERVER_URI + "req_appointment", parameters,
					ReqApp.class);

			System.out.println("Response  " + response.getName());

			
		
		 	request.setAttribute("check",response);
		 	
			//and do I need this JSON media type for my use case?
		    HttpHeaders headers = new HttpHeaders();
		    headers.setContentType(MediaType.APPLICATION_JSON);

		    //set my entity
		    HttpEntity<Object> entity = new HttpEntity<Object>(headers);

		    ResponseEntity<String> out = restTemplate.exchange(SERVER_URI + "req_appointment", HttpMethod.GET, entity, String.class);

		
		    ObjectMapper mapper = new ObjectMapper();
		    //JSON from URL to Object
		    ReqApp empss = mapper.readValue(out.getBody(), ReqApp.class);

			System.out.println("------" + Arrays.asList(empss).size());

		   

		    System.out.println(out.getBody());
		    System.out.println(out.getStatusCode());
		 	
		    
			model = new ModelAndView("checker");
			
		} catch (HttpClientErrorException e) {

			System.out.println("error:  " + e.getResponseBodyAsString());

		} catch (Exception e) {
			System.out.println("error:  " + e.getMessage());
		}
		return model;
	
 	}
 	
}
