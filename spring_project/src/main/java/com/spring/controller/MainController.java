package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	
	
	@RequestMapping(value="/test.do",method=RequestMethod.GET)
	public String test() {
		return "test";
	}
	@RequestMapping(value="/index.do",method=RequestMethod.GET)
	public String index() {
		return "index";
	}
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String main() {
		return "index";
	}
	@RequestMapping(value="/notice.do",method=RequestMethod.GET)
	public String notice() {
		return "/event/notice";
	}
	
	@RequestMapping(value="/question.do",method=RequestMethod.GET)
	public String question() {
		return "/event/question";
	}
	@RequestMapping(value="/map.do",method=RequestMethod.GET)
	public String map() {
		return "/event/map";
	}
	@RequestMapping(value="/youtube.do",method=RequestMethod.GET)
	public String youtube() {
		return "/event/youtube";
	}
	@RequestMapping(value="/notice_page.do",method=RequestMethod.GET)
	public String notice_page() {
		return "/event/notice_page";
	}
	
	
}
