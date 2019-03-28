package com.htmltoolkit.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller

public class SignoutController {
	@RequestMapping("/logout")
	      public String logout(HttpServletRequest request){
	    	  System.out.println("am in logout session");
	    	
	    	  HttpSession session = request.getSession(true);
	    	  session.invalidate();
	    //	  session.setMaxInactiveInterval(60*30);
	      
	        return "nlogin";
	      }
/*	
@Controller
@RequestMapping("/logout")
public class SignoutController {

  @RequestMapping(method=RequestMethod.GET)
  public String logout(HttpSession session) {
    session.invalidate();
    return "redirect:/nlogin";
  }*/
	
}
