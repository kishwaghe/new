package com.main.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes({"username","password"})
public class Homecontroller {

	@RequestMapping("/")
public String m1(HttpServletRequest request)
{
	return "login";
}
@RequestMapping("/log")
public String m11(@RequestParam (name="username")String username,@RequestParam (name="password")String password,Model m)
{
m.addAttribute("username",username);
m.addAttribute("password",password);

return "success";
}
@RequestMapping("/logout")
public String m123()
{

	return "redirect:/";
}
@RequestMapping("/profile")
public String m1234()
{

	return "success";
}
}
